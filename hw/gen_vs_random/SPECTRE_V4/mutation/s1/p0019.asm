.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdx], edx
xor al, 30
and rsi, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], rbx
sbb eax, 1675303701
cmovle esi, eax
cmp al, al
and rsi, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rsi]
mov esi, 1115061743
xor cl, 13
movzx edx, di
add bl, -30 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
sbb al, cl
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], -74
and rdx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], ebx
and rsi, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 4
xor ax, -17712
not esi
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], ebx
and rax, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rsi]
bts bx, 42
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 7
mov ebx, 51969593
sub ax, 25338
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 1
add dl, -91 # instrumentation
cmovl rbx, rcx
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
sub rsi, rdx
neg bx
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], ecx
imul ax
and rdi, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rax], -91
and rsi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rsi], -25
sub cl, -94
and rsi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rsi]
cmovb di, cx
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
and esi, ebx
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], rdx
cmovp rdx, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
