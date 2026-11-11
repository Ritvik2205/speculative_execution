.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, 22976
and al, dl
and rdi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 35
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
