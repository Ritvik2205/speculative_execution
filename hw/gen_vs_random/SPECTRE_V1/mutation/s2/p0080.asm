.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, cl
imul rdx
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], esi
imul eax
sbb al, 104
add al, -53 # instrumentation
sbb bl, dl
and rax, 0b1111111111111 # instrumentation
movzx edi, word ptr [r14 + rax]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
xor al, -74
and al, bl
xor rbx, 50
and rsi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btr qword ptr [r14 + rbx], rdi
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], bx
add al, -94 # instrumentation
or bl, al
sub al, 63
adc cl, -81
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
