.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -103 # instrumentation
cmovbe bx, bx
or sil, sil
or dl, -97
or cl, sil
and rax, -2058103810
btr cx, ax
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
xor dl, bl
or cl, bl
or sil, sil
or dil, al
jmp .bb_0.1
.bb_0.1:
cmovnp rdx, rsi
or cl, 30
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
