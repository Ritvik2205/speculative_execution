.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
lfence
inc qword ptr [r14 + rax] 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
cmovnl rcx, qword ptr [r14 + rbx] 
lfence
or ax, -89 
lfence
setnp cl 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
sbb byte ptr [r14 + rsi], al 
lfence
or dil, cl 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
sbb word ptr [r14 + rax], dx 
lfence
jnle .bb_0.1 
jmp .exit_0 
.bb_0.1:
lea ax, qword ptr [rsi] 
lfence
test sil, -101 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
cmp bl, byte ptr [r14 + rcx] 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
setl byte ptr [r14 + rsi] 
lfence
cmovnb bx, cx 
lfence
lea rsi, qword ptr [rsi] 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
test dword ptr [r14 + rsi], 73254857 
lfence
and rdx, 0b1111111111000 # instrumentation
lfence
lock btc word ptr [r14 + rdx], 7 
lfence
add al, 127 # instrumentation
lfence
sets bl 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
