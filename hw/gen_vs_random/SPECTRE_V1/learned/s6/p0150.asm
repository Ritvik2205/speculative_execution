.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, cl
jno .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, 70
and rbx, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rbx]
xor dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
