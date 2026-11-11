.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rsi, rax
xor ecx, 8
test sil, 41
btr edi, ecx
or rcx, -17
xor cl, cl
and bl, 26 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rcx]
cmovns rcx, rsi
and rcx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rcx]
cmovno si, si
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rdx
cmovp di, cx
btc ebx, edi
xor dl, -43
and rsi, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rsi]
or cl, -77
and cl, -19
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], 29
or edx, edx
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
