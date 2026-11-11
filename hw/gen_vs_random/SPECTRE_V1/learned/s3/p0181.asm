.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
sub al, bl
test bl, -8
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], edx
and rcx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rcx], 42
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
lea rcx, qword ptr [rbx + rcx + 45597]
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 50
sbb al, -112
add esi, 27
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
