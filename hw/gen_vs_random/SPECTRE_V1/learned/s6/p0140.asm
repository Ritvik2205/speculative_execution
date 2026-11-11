.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 64
sbb cl, 105
xor ebx, ecx
sub al, -82
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
and bl, 124
js .bb_0.2
jmp .exit_0
.bb_0.2:
sub al, dl
sub rcx, 13
sbb cl, bl
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], dil
add cl, dl
and cl, -57
cmovle rdx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
