.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], -86
sbb dl, dil
xchg rsi, rdi
or rdi, 68
add di, 44
sbb bl, -41
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], al
sbb cl, dil
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 61
sbb eax, 1392087754
sbb cl, 105
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
