.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 3
test al, sil
sbb bl, cl
test al, 59
and rax, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rax]
or al, 100
and cl, -57
add al, sil
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
xor eax, -105
cmp al, 13
and rsi, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
or rbx, 39
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
