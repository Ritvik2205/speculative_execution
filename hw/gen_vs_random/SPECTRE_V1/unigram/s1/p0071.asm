.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setns dil
and cx, 92
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], 91
cmovbe rdx, rdi
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 68
and rdx, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rdx]
xchg rdi, rbx
xchg dx, cx
and rcx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rcx]
sub edi, 58
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
cmp cl, cl
and rax, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rax]
cmovns rsi, rdi
cmovnbe ax, ax
lea bx, qword ptr [rdi + rcx]
xchg rsi, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
