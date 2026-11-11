.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea cx, qword ptr [rcx]
or cl, bl
jl .bb_0.1
jmp .exit_0
.bb_0.1:
xor al, -119
and al, -54
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
