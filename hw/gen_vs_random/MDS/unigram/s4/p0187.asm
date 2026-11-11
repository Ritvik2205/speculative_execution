.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 85
and cl, 112 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rsi]
test esi, 425331143
and rax, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rax], 2
or edi, -88
btc di, dx
and rdi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rdi], ax
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 37
bt ax, bx
and bl, -120 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
or rdi, 21
and rax, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rax], esi
test dil, al
or al, dl
and dl, -19 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rax]
and bl, 65 # instrumentation
cmovnbe ax, cx
cmovz ecx, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
