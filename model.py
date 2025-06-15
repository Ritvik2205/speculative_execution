import torch
import torch.nn as nn
import torch.optim as optim
from torch_geometric.data import Data, DataLoader, Batch
from torch_geometric.nn import GatedGraphConv
from transformers import AutoModel, AutoTokenizer
import numpy as np

# Check GPU
device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
print(f"Using device: {device}")


class HybridVulnDetector(nn.Module):
    def __init__(self, ggnn_hidden_dim=128, num_edge_types=12, codebert_model="microsoft/codebert-base"):
        super().__init__()
        
        # Graph Component (GGNN)
        self.ggnn = GatedGraphConv(ggnn_hidden_dim, num_edge_types)
        
        # Sequence Component (CodeBERT)
        self.codebert = AutoModel.from_pretrained(codebert_model)
        self.tokenizer = AutoTokenizer.from_pretrained(codebert_model)
        self.codebert_dim = self.codebert.config.hidden_size
        
        # Node-level classifier
        self.node_classifier = nn.Sequential(
            nn.Linear(ggnn_hidden_dim, 32),
            nn.ReLU(),
            nn.Linear(32, 1),
            nn.Sigmoid()
        )
        
        # Graph-level classifier
        self.graph_classifier = nn.Sequential(
            nn.Linear(1 + self.codebert_dim, 64),  # 1 from graph_preds + codebert_dim
            nn.ReLU(),
            nn.Linear(64, 1),
            nn.Sigmoid()
        )

    def forward(self, graph_data, code_texts):
        # Process graph with GGNN
        x_graph = self.ggnn(graph_data.x, graph_data.edge_index, graph_data.edge_attr)
        
        # Get node-level predictions
        node_preds = self.node_classifier(x_graph)
        
        # Aggregate node predictions (mean pooling)
        graph_preds = torch.mean(node_preds, dim=0, keepdim=True)  # Keep the batch dimension
        
        # Process text with CodeBERT
        inputs = self.tokenizer(code_texts, return_tensors="pt", padding=True, truncation=True).to(device)
        codebert_output = self.codebert(**inputs).last_hidden_state[:, 0, :]  # CLS token
        
        # Ensure both tensors have the same batch dimension
        if graph_preds.size(0) != codebert_output.size(0):
            if graph_preds.size(0) > codebert_output.size(0):
                codebert_output = codebert_output.repeat(graph_preds.size(0), 1)
            else:
                graph_preds = graph_preds.repeat(codebert_output.size(0), 1)
        
        # Concatenate features
        x_combined = torch.cat([graph_preds, codebert_output], dim=1)
        
        # Final classification
        return self.graph_classifier(x_combined)
    

def create_graph_data(node_features, edge_index, edge_types, labels):
    """Convert CPG data to PyG format."""
    edge_attr = torch.tensor(edge_types, dtype=torch.long)
    return Data(
        x=torch.tensor(node_features, dtype=torch.float32),
        edge_index=edge_index,
        edge_attr=edge_attr,
        y=torch.tensor(labels, dtype=torch.float32)
    )


# Example usage
node_features = np.random.rand(100, 32)  # 32-dim node embeddings (e.g., Word2Vec)
edge_index = torch.tensor([[0, 1, 2], [1, 2, 0]], dtype=torch.long)  # Example edges (source, target format)
edge_types = [1, 2, 3]                   # Edge types (e.g., 1=AST, 2=CFG, 3=PDG)
labels = [1]                             # 1=Vulnerable, 0=Clean

graph_data = create_graph_data(node_features, edge_index, edge_types, labels).to(device)
code_texts = ["void foo() { char buf[10]; strcpy(buf, input); }"]  # Raw code


def train(model, dataloader, epochs=10):
    model.train()
    optimizer = optim.Adam(model.parameters(), lr=1e-4)
    criterion = nn.BCELoss()
    
    for epoch in range(epochs):
        total_loss = 0
        for batch in dataloader:
            optimizer.zero_grad()
            
            # Unpack batch tuple
            graph_batch, code_texts, labels = batch
            
            # Forward pass
            outputs = model(graph_batch, code_texts)
            
            # Ensure labels match output shape
            labels = labels.float().view(-1, 1)
            
            # Calculate loss
            loss = criterion(outputs, labels)
            
            # Backward pass
            loss.backward()
            optimizer.step()
            
            total_loss += loss.item()
        
        print(f"Epoch {epoch+1}, Loss: {total_loss / len(dataloader):.4f}")



class VulnDataset(torch.utils.data.Dataset):
    def __init__(self, graph_list, text_list, labels):
        self.graph_data = graph_list
        self.code_texts = text_list
        self.labels = labels

    def __len__(self):
        return len(self.labels)

    def __getitem__(self, idx):
        return {
            "graph_data": self.graph_data[idx],
            "code_texts": self.code_texts[idx],
            "labels": self.labels[idx]
        }

def collate_fn(batch):
    return Batch.from_data_list([item["graph_data"] for item in batch]), \
           [item["code_texts"] for item in batch], \
           torch.tensor([item["labels"] for item in batch])

# Example dataset
dataset = VulnDataset([graph_data], code_texts, labels)
dataloader = torch.utils.data.DataLoader(dataset, batch_size=4, shuffle=True, collate_fn=collate_fn)

# Initialize
model = HybridVulnDetector().to(device)

# Train
train(model, dataloader, epochs=10)

# Save model
torch.save(model.state_dict(), "hybrid_vuln_detector.pt")