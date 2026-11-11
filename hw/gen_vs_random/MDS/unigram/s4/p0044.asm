.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], 95
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 7
or rax, 1749358813
and bl, dil
bt ecx, ecx
test esi, 80
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 2
bt rbx, rbx
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 3
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 9
and rdx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btr dword ptr [r14 + rdx], eax
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], 57
and rcx, 4
and dl, -7
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
cmovnb bx, cx
cmovno eax, esi
cmovnl esi, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
