.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea cx, qword ptr [rcx]
sbb dil, -106
cmovno cx, ax
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
mov dil, bl
or al, dil
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 65
lea ax, qword ptr [rbx + rdi + 31]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
