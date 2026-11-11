.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rax]
add eax, esi
add edi, 11
sbb eax, 4
cmp al, -52
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 6
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], 120
dec rcx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
add dl, 100 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rcx]
dec edi
movzx rax, sil
dec cx
cmovp edx, edx
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rdx]
mul esi
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rax
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 124
and rcx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rcx], ebx
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 121
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 7
and rbx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rbx]
sub rbx, rdx
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax]
cmp edi, -104
and rdi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rdi]
add ecx, 42
and rdi, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rdi]
cmovnp ecx, esi
sbb cl, 20
lea ebx, qword ptr [rsi]
or ebx, edx
bt rax, 23
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], esi
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rax
and rcx, 0b1111111111111 # instrumentation
movsx rcx, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], sil
and rdi, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rdi]
mov cx, 4
adc al, dl
test ax, cx
not rbx
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdi]
cmovl rdi, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
