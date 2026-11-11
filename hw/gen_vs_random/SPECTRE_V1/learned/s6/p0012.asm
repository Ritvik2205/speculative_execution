.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, edi
or ebx, -124
lea rax, qword ptr [rdx + rbx]
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 74
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 2
add cl, -127
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], cl
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], bl
sbb al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
