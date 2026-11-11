.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -53 # instrumentation
sbb bl, dl
imul eax
sbb al, -107
and rax, 0b1111111111111 # instrumentation
movzx edi, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], esi
sub al, cl
imul rdx
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
add al, -94 # instrumentation
or bl, al
and rbx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btr qword ptr [r14 + rbx], rdi
and al, bl
adc cl, -19
xor rbx, -34
and rsi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], bx
sub al, -89
xor al, 54
jmp .bb_0.2
.bb_0.2:
add bl, 115 # instrumentation
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rax], ebx
cmovbe di, dx
and rbx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rbx]
and bl, dl
btc rsi, rax
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 7
add bl, 104 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdx]
movsx rsi, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
