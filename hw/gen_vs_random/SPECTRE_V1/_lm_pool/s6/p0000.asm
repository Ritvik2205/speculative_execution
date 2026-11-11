.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, dl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
and rcx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rcx]
xor eax, -1721938664
sbb cl, bl
mov cl, sil
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], cx
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], 2
sbb al, 49
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], bl
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -107
sbb bl, cl
mov dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
