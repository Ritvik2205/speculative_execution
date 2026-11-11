.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 4 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rsi]
bt cx, 22
and sil, al
xor sil, -15
xor rax, rcx
and rsi, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rsi]
xor rsi, -117
and dil, -62
and rsi, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rsi]
xor cl, bl
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf edi, dword ptr [r14 + rsi]
and bl, 45 # instrumentation
cmovnb dx, di
cmovno bx, bx
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr edx, esi
test rax, -363019044
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 7
and dl, 16 # instrumentation
cmovle ecx, ecx
and rdx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rdx]
or ax, -23697
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
