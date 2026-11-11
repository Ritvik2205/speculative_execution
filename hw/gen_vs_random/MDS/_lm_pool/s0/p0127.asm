.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 60
and ax, -12519
jmp .bb_0.1
.bb_0.1:
xor al, cl
and al, cl
and cx, -8
and rcx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rcx]
and dl, al
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
and cl, 79
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dl
jmp .bb_0.2
.bb_0.2:
test al, -7
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
and ax, 31082
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
