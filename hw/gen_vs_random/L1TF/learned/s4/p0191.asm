.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, -36 # instrumentation
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], edi
or ecx, 44
and rdi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
