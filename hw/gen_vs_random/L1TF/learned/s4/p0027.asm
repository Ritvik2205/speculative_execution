.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rcx]
add rcx, 72
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rbx]
or dil, -113
and rdi, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rcx]
jmp .bb_0.3
.bb_0.3:
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], bl
add dl, dil
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], al
test dl, 84
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], -25
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
