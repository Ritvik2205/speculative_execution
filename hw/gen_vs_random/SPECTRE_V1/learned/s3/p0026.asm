.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx ebx, cx
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rdx]
sbb cl, bl
or ax, -114
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], ax
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 44
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], cl
sub bl, -6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
