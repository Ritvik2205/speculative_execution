.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and si, -121
xor rax, -773894210
test al, 127
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
or dl, al
and rsi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rsi], 0
xor bl, dl
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
test bl, -9
bt ax, dx
xor cl, 55
or cl, 39
xor dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
