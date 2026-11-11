.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dx, di
add bx, bx
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
adc rax, 1682231791
imul dx, dx
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], 113
and rdx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], -68
mov bl, dl
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edx
and rcx, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rcx]
mov bl, al
btr esi, esi
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, ecx
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rdx
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
cmovb cx, dx
bts rdx, rax
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
test rdx, rcx
mul dil
neg rcx
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], -74
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 4
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
cmp al, al
and rax, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rax], -91
sub ax, 24426
and rdi, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rdi]
sub rsi, rdx
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 1
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 1
mov esi, 1115061743
and rsi, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rsi], 22
and rdx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], ebx
neg bx
not esi
xor ax, 13332
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], ecx
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], rdx
mov ebx, 51969593
sbb al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
