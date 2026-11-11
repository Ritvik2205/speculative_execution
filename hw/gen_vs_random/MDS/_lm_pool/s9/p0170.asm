.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, cl
btc esi, 199
or rcx, -17
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
jmp .bb_0.1
.bb_0.1:
xor sil, al
test eax, -675944960
xor bl, cl
xor cl, al
and di, 99
jmp .bb_0.2
.bb_0.2:
test al, sil
test rsi, 5
xor dil, -70
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
