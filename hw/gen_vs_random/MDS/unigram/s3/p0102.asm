.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc cx, ax
and rcx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rcx]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf edi, eax
and rsi, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btc dword ptr [r14 + rsi], esi
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], bx
and rsi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rsi]
or dl, dil
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], cl
and al, 16 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rbx]
cmovo rbx, rbx
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], 49
jmp .bb_0.1
.bb_0.1:
bt ax, dx
and rbx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rbx], eax
cmovbe eax, ebx
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
or dil, sil
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rsi
and bl, 45 # instrumentation
cmovnb si, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
