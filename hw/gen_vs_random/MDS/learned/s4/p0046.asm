.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -78 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], cl
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], ecx
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
test cl, al
cmovl rax, rsi
or rax, -285849275
jmp .bb_0.1
.bb_0.1:
bt rsi, rdi
and rcx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rcx], dx
jmp .bb_0.2
.bb_0.2:
or si, di
xor al, -28
or rdi, 67
and rdx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btc word ptr [r14 + rdx], ax
and rdi, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], 27
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], edx
test rax, 1732677821
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
