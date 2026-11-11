.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, dl
and dil, -39
or bl, dl
and bl, bl
jmp .bb_0.1
.bb_0.1:
test al, cl
btr ax, dx
xor bl, cl
and rax, -978188247
xor bl, dl
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
and di, 99
and al, -54
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], bl
test al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
