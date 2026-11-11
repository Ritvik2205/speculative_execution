.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], 67
test sil, 29
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], -7
jmp .bb_0.1
.bb_0.1:
sub dl, -78
test dl, -37
sbb bl, dl
cmp al, 27
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], -32
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
xor dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
