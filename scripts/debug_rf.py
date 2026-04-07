import json
from sklearn.feature_extraction import DictVectorizer
from sklearn.ensemble import RandomForestClassifier
import sys

print("Loading data...")
data = []
with open("data/dataset/merged_features_v5.jsonl") as f:
    for line in f:
        data.append(json.loads(line)["features"])

print(f"Loaded {len(data)} records.")

print("Vectorizing...")
vec = DictVectorizer(sparse=True)
X = vec.fit_transform(data)
print(f"X shape: {X.shape}")

print("Fitting RF...")
y = ["label"] * len(data) # dummy
clf = RandomForestClassifier(n_jobs=1, max_depth=5) # simplify
clf.fit(X, y)
print("Done.")




