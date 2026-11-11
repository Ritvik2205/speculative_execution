.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rdi]
test al, -99
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], dil
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 913863268
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
not dl
mov bl, dl
test bl, -8
and rdx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rdx]
lea rcx, qword ptr [rdi + rax]
test al, 84
adc dl, 107
sub al, dl
mov al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
