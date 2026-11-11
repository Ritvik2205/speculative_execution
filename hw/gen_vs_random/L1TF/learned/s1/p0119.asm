.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rdi]
xor dl, cl
adc bl, -14
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
jmp .bb_0.1
.bb_0.1:
lea ax, qword ptr [rbx + rdi + 100]
xor dil, al
sbb sil, -19
lea esi, qword ptr [rbx]
btr dx, 13
xor dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
