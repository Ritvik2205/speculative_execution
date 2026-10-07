.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
lfence
mov rax, qword ptr [r14 + rax] 
lfence
add eax, esi 
lfence
add edi, 11 
lfence
sbb eax, -984782068 
lfence
cmp al, 114 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
btr dword ptr [r14 + rsi], 6 
lfence
and rdx, 0b1111111111000 # instrumentation
lfence
lock add qword ptr [r14 + rdx], -81 
lfence
dec rcx 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
or dword ptr [r14 + rcx], 0b1000 # instrumentation
lfence
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
lfence
and edx, 0b11 # instrumentation
lfence
idiv dword ptr [r14 + rcx] 
lfence
add dl, 100 # instrumentation
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
cmovo rdi, qword ptr [r14 + rcx] 
lfence
dec edi 
lfence
movzx rax, sil 
lfence
dec cx 
lfence
cmovp edx, edx 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
xor rax, qword ptr [r14 + rdi] 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
cmovl di, word ptr [r14 + rdx] 
lfence
mul esi 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
and rax, 0b111 # instrumentation
lfence
btr qword ptr [r14 + rcx], rax 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
sub word ptr [r14 + rdx], 124 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
and ebx, 0b111 # instrumentation
lfence
btc dword ptr [r14 + rcx], ebx 
lfence
and rcx, 0b1111111111000 # instrumentation
lfence
lock or qword ptr [r14 + rcx], 121 
lfence
and rcx, 0b1111111111000 # instrumentation
lfence
lock btc word ptr [r14 + rcx], 7 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
cmovnb rdi, qword ptr [r14 + rbx] 
lfence
sub rbx, rdx 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
imul ax, word ptr [r14 + rax] 
lfence
cmp edi, -104 
lfence
imul bx 
lfence
add dl, -39 # instrumentation
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
cmovnl ax, word ptr [r14 + rdi] 
lfence
adc bx, -89 
lfence
and rbx, 0b1111111111000 # instrumentation
lfence
lock btc qword ptr [r14 + rbx], 4 
lfence
and rcx, 0b1111111111000 # instrumentation
lfence
lock add word ptr [r14 + rcx], 98 
lfence
add sil, 26 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
cmp dword ptr [r14 + rax], -92 
lfence
cmovnp rsi, rsi 
lfence
test al, dl 
lfence
cmp dil, dl 
lfence
mov rdx, rbx 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
cmovs eax, dword ptr [r14 + rdx] 
lfence
test edi, -1249897727 
lfence
movzx ebx, cl 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
cmp ebx, dword ptr [r14 + rsi] 
lfence
and rax, 0b1111111111000 # instrumentation
lfence
lock btc word ptr [r14 + rax], 3 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
and byte ptr [r14 + rsi], -102 
lfence
imul rcx, rbx 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
cmovnb ecx, dword ptr [r14 + rax] 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
xor sil, byte ptr [r14 + rbx] 
lfence
imul bl 
lfence
add cl, -117 # instrumentation
lfence
cmovs rbx, rdx 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
