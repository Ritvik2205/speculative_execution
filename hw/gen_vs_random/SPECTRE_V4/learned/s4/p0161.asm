.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, 71
and rcx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rbx]
test bl, sil
and dl, dl
cmp bl, -16
test dil, al
xor rax, -98
dec al
or dl, -26
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
