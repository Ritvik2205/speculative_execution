.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 91
and di, 91
and rax, 498847670
and ecx, -104
btc dx, 146
xor dil, 124
and rdx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rsi
and dl, dl
and rsi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rsi]
test al, bl
or dl, 51
or sil, -78
test al, bl
jmp .bb_0.1
.bb_0.1:
xor bl, dil
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], al
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
