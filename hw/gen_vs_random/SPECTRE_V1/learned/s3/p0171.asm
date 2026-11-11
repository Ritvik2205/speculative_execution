.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -59 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], 35
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
cmp rdi, 17
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
sub cl, sil
mov dl, sil
jmp .bb_0.3
.bb_0.3:
sub bl, -19
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 1371410782
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
