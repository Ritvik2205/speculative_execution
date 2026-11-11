.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rax]
setnp cl
or dil, cl
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], dx
and rbx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rbx]
or ax, 12618
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], al
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
add al, 127 # instrumentation
sets bl
lea ax, qword ptr [rsi]
and rsi, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rsi]
test sil, 112
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 7
lea rsi, qword ptr [rsi]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 73254857
cmovnb bx, cx
and rcx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
