.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, -43
bts rax, rdi
xor cl, dil
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
or sil, -78
and cl, dil
test dl, -95
or bl, -54
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], al
and sil, dl
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
and bl, 68
test al, 127
xor bl, dl
bt di, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
