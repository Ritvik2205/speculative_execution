.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rbx]
not edi
jmp .bb_0.1
.bb_0.1:
or al, dil
btc edx, 57
jnz .bb_0.2
jmp .exit_0
.bb_0.2:
sub al, -47
adc dil, 120
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], bl
or eax, -401020526
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
