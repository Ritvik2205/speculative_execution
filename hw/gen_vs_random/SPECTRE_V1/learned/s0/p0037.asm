.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov al, cl
add al, 3
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -42
setnb bl
js .bb_0.1
jmp .exit_0
.bb_0.1:
cmp al, -77
lea cx, qword ptr [rsi + rax]
and rcx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
