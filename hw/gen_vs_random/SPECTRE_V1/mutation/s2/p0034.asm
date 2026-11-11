.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul rdx
and rax, 0b1111111111111 # instrumentation
movzx edi, word ptr [r14 + rax]
imul eax
sbb al, -114
add al, -53 # instrumentation
sbb bl, dl
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], esi
sub al, cl
jl .bb_0.1
jmp .exit_0
.bb_0.1:
xor al, -74
sub al, -1
and al, bl
and rbx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btr qword ptr [r14 + rbx], rdi
and rsi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rsi]
xor rbx, -34
adc cl, -19
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], bx
add al, -94 # instrumentation
or bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
