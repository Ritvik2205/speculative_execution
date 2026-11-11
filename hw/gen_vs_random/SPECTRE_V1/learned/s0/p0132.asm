.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -61 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], edx
bts rax, 140
and al, -119
and rax, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], si
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], cl
lea cx, qword ptr [rax + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
