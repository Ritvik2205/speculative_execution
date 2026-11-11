.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rax
test al, 48
add dl, 47
sub dl, cl
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rdx]
sbb edi, 24
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
