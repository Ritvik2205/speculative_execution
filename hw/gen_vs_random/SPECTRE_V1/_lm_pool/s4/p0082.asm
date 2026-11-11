.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 40 # instrumentation
btc rax, rax
and rax, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rax]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
test al, 42
lea cx, qword ptr [rax + rbx]
and cl, cl
sub al, bl
cmp ebx, -33
and rbx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rbx]
xchg bl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
