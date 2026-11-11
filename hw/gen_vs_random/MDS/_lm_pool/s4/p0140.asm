.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], ax
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rsi
test ecx, -1843375753
xor sil, 110
test rdi, 96
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 5
jmp .bb_0.1
.bb_0.1:
test al, 66
and rsi, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
test dil, -51
and rsi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rsi]
or dl, sil
jmp .bb_0.2
.bb_0.2:
or cl, al
cmovnb rdx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
