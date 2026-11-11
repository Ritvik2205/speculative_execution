.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, dil
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
test sil, dl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
xor al, 34
and rax, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rax]
or bl, cl
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
or rax, -1523798580
test al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
