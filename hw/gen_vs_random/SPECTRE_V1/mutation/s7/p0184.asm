.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], esi
imul eax
add al, -53 # instrumentation
sbb bl, dl
imul rdx
and rax, 0b1111111111111 # instrumentation
movzx edi, word ptr [r14 + rax]
sub al, cl
sbb al, -14
jl .bb_0.1
jmp .exit_0
.bb_0.1:
xor al, -89
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], bx
and rbx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btr qword ptr [r14 + rbx], rdi
add al, -94 # instrumentation
or bl, al
adc cl, -81
sub al, -66
xor rbx, 50
and al, bl
and rsi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
