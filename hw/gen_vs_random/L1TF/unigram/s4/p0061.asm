.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc edi
lea rbx, qword ptr [rbx]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 8
and rax, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rax]
test dil, -126
sbb rcx, 99
seto dil
and rcx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rcx]
bt rbx, rcx
adc dl, -12
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], cl
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], -119
or al, al
and rbx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
