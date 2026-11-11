.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 67 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rcx]
cmp rsi, 53
and dl, -92
and rdi, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rdi]
lea rbx, qword ptr [rdi]
and rbx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
sub dil, cl
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
lea edx, qword ptr [rax + rax + 52]
xor cx, 74
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
