.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], 24
and rbx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 2
test dl, -36
test dil, -116
add sil, 78 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 46
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rbx]
movsx cx, dil
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], 71
mov bl, al
not ax
sub sil, sil
xor sil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
