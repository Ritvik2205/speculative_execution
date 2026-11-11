.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, ecx
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], dx
test si, 42
xor dx, 32
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 2
jmp .bb_0.1
.bb_0.1:
test sil, dl
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and bl, bl
bt dx, si
test dl, dil
xor si, 80
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 36
test sil, 41
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btr word ptr [r14 + rax], dx
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
test rcx, -613256812
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
