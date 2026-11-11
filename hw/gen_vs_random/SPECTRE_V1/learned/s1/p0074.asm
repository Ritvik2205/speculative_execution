.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg ebx, ecx
sbb si, 35
add dl, 47
not bx
and rcx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rcx]
cmp al, 13
add al, -72
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
