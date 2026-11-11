.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btc dword ptr [r14 + rdx], esi
and cl, -6
and rsi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], bl
xor al, 122
btr esi, edi
jmp .bb_0.1
.bb_0.1:
test rcx, rsi
xor dl, bl
xor cx, -18
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
test al, 22
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
