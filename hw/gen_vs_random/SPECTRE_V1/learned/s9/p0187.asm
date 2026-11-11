.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 67 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rax]
cmp rdx, -19
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], bx
adc al, -92
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rbx]
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
btc ebx, eax
and rdx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdx]
sub dl, dil
and rdx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
