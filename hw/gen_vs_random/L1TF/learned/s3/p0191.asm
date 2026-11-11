.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -57 # instrumentation
cmovo rbx, rax
cmp cl, 57
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rax]
dec al
and rdx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
lea bx, qword ptr [rsi]
lea ax, qword ptr [rcx]
or al, -48
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
