.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bx, 17
and dl, -73
or cl, dl
xor cl, bl
or rax, -1523798580
or cx, 39
and cl, dil
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
and rdi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdi]
or ax, 30524
bts dx, 50
and bl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
