.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, bl
bts dx, 50
and rdx, 50
and rdx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rsi]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr edx, edi
and rsi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rsi]
xor rsi, -117
xor si, 91
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], ebx
and rdx, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and cl, cl
btr ax, 193
or rbx, -72
cmovns ax, cx
and rsi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rsi]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rsi
and rax, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rax]
and bx, 8
and rsi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
