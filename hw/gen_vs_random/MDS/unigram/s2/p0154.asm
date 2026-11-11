.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnbe rsi, rbx
and al, -82 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rsi]
btc cx, si
and bl, -123 # instrumentation
cmovnp ax, cx
or bx, dx
or ecx, 48
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 3
or cx, 0b1000000000000000 # instrumentation
bsf si, cx
and rdx, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 99
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], di
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], sil
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 1
test edx, -372470678
xor dil, bl
and rdx, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rdx]
not ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
