.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
sbb ebx, -116
sub al, bl
and rbx, -64
jmp .bb_0.1
.bb_0.1:
cwd
and rcx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rcx]
sub cl, -49
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 41
sbb al, -4
add esi, -124
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
