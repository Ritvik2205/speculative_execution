.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov cl, al
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rcx]
or cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
