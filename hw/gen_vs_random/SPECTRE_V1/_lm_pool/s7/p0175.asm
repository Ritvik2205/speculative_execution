.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc dl
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
cmp ax, 7452
sub bx, 48
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 69
jl .bb_0.2
jmp .exit_0
.bb_0.2:
lea dx, qword ptr [rcx + rsi]
sub al, -1
and rax, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rdi]
imul dl
add al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
