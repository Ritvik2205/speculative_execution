.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rbx]
cmp dil, 67
and rax, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], cl
and rdi, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
