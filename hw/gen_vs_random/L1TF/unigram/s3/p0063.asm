.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb dl, cl
cmp esi, esi
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rax
lea si, qword ptr [rdx]
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], bx
btc cx, ax
cmovns rax, rax
and rdx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btc word ptr [r14 + rcx], cx
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 16
btr rdx, 203
setnp dil
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 49
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 90
adc rax, 1431457700
and rdx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
