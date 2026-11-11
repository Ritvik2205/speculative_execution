.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul rdx
and rax, 0b1111111111111 # instrumentation
movzx edi, word ptr [r14 + rax]
sub al, cl
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], esi
imul eax
add al, -53 # instrumentation
sbb bl, dl
sbb al, 118
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rsi]
xor al, -19
adc cl, -19
sub al, -89
and al, bl
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], bx
and rbx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btr qword ptr [r14 + rbx], rdi
add al, -94 # instrumentation
or bl, al
xor rbx, -34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
