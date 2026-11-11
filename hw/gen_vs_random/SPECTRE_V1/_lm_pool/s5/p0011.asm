.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub cl, -21
xor dil, dil
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 65
sub cl, al
jb .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub rcx, 13
jmp .bb_0.2
.bb_0.2:
cmp al, 23
sbb edx, -8
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
sub al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
