.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 41
and rbx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rbx]
cmp ebx, -33
or al, bl
and rbx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
inc ecx
js .bb_0.1
jmp .exit_0
.bb_0.1:
or al, 100
sub cl, -47
xor bl, -38
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
