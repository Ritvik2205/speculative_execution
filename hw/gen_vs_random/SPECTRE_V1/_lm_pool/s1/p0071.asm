.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], -36
cmp cl, al
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], sil
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rcx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
sub di, 59
sbb cl, bl
sub dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
