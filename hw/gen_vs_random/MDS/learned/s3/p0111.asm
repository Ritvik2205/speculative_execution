.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 43
and dil, cl
and di, 91
and rdi, 82
and dl, -73
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 63
and dl, cl
test dl, 9
test rdi, 40
test sil, bl
and dl, bl
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
