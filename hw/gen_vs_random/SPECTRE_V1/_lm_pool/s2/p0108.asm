.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, eax
sbb al, 66
or esi, -74
and rax, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rax]
sub dil, cl
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
lea ax, qword ptr [rcx + rax + 85]
and rcx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rcx]
lea bx, qword ptr [rdx + rax]
add dil, 72
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
