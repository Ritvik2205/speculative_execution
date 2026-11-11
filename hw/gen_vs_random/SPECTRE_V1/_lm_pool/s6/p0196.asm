.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 67 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rcx]
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 21
and rbx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rbx]
jle .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rsi]
jnle .bb_0.3
jmp .exit_0
.bb_0.3:
test bl, -8
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], -57
sbb eax, -417098439
and rbx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
