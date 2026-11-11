.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
lea edi, qword ptr [rdx]
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], bl
or al, 19
test al, -71
sbb cl, 105
jmp .bb_0.1
.bb_0.1:
or al, bl
sub bl, -19
cmovs cx, ax
sbb al, al
and rcx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
