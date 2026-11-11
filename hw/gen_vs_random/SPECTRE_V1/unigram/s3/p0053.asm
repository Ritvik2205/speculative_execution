.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rcx]
sbb bl, bl
sets bl
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 19
xchg dl, cl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, 52 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], al
and rax, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rax]
seto cl
setz bl
add di, bx
sbb al, 66
and rbx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rbx]
setns dl
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], 63
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
