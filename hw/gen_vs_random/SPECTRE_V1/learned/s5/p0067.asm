.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -16 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], bx
and rdx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rdx], 69
sub dil, -111
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], cl
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dl
sbb esi, 44
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
and dl, sil
and ecx, ecx
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
