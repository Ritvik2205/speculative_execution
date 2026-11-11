.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rsi]
test bl, -8
neg rbx
sbb al, cl
and rdx, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rax]
and dil, 98
setle bl
lea rax, qword ptr [rbx]
test rdx, 1657596343
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
