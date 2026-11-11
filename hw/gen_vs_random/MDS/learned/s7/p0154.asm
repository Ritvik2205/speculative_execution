.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, sil
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -232610484
xor edi, 63
test bl, dil
xor dl, 34
jmp .bb_0.1
.bb_0.1:
and ax, 5001
jmp .bb_0.2
.bb_0.2:
xor dil, 81
btc esi, 199
and rdi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdi], 93
xor cl, bl
test dil, -80
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], sil
test dil, bl
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
and al, 87
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
