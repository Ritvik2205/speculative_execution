.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rax
test rdi, 1238697264
sets cl
not rbx
and rsi, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rsi]
xor al, -64
adc bl, bl
neg ax
and rax, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rax]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
lea ax, qword ptr [rsi]
test sil, -101
and rcx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rsi]
cmovnb bx, cx
lea rsi, qword ptr [rsi]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 2114064901
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 7
add al, 127 # instrumentation
sets bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
