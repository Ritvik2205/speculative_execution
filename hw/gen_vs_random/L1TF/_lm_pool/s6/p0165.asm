.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 86 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rdx]
test cl, 19
neg rdi
and rdx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rdx]
lea eax, qword ptr [rdi]
test al, -56
xor bl, dl
and rdi, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rdi]
and dil, dil
and rsi, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rsi]
adc cl, -34
add eax, 871834813
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
setb dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
