.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rsi, 73
and bl, 52 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rsi
and rdi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdi], 46
and cl, dil
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], -109
and sil, sil
cmovno esi, eax
and rsi, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 75
jmp .bb_0.1
.bb_0.1:
and dl, -73 # instrumentation
cmovns rbx, rdi
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
and rsi, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rsi]
and dl, 113 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rsi]
xor dil, 25
and rbx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rsi]
cmovbe cx, dx
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
