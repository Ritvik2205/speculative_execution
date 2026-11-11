.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, edi
bt edx, esi
test esi, 425331143
and rax, 498847670
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 6
jmp .bb_0.1
.bb_0.1:
test cl, sil
bt rdi, rsi
jmp .bb_0.2
.bb_0.2:
xor bl, -61
and al, 87
test edi, -1252846009
bt cx, di
and cl, sil
cmp al, dl
and bl, 68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
