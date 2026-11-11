.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 32
inc al
and rdi, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdi]
not edx
and rbx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rbx], 5
and cl, -57
test dil, -116
adc di, 44
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
test bl, -8
and rsi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
