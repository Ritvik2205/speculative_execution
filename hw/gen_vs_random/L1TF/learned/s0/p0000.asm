.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 77
add cl, bl
jmp .bb_0.1
.bb_0.1:
setno bl
add cl, sil
bt ax, 205
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], sil
and al, sil
sbb bl, dil
jmp .bb_0.2
.bb_0.2:
and ax, 37
jmp .bb_0.3
.bb_0.3:
add cl, dil
and rax, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
