.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, dil
sbb ecx, 71
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 23
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
or sil, -44
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
test cl, 2
dec ecx
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
