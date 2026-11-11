.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 13045
test bl, dl
and eax, -1145483375
and sil, al
cmovbe di, dx
cmovnp dx, si
adc al, sil
or al, -50
mov dl, al
or al, sil
adc cl, -54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
