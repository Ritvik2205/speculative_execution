.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
adc rdi, 39
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], 16
adc ebx, 13
and rax, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], 85
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], 45
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 0
and ax, 25351
loope .bb_0.1
jmp .exit_0
.bb_0.1:
lea rcx, qword ptr [rax + rax]
cmovnle ax, dx
lea rbx, qword ptr [rax + rbx]
and rbx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rbx]
add cl, bl
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
