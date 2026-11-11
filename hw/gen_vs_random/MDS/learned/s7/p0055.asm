.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor di, 40
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
test eax, 343548072
or cl, 39
and dl, -73
xor al, -4
test cl, al
xor dil, -70
or dl, -31
and cl, -111
or dl, dl
xor bl, cl
and cl, 79
test cl, dil
or rax, -1523798580
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
