.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rdi, 60
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], dil
sbb cl, sil
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
test sil, 13
movzx edx, bx
jp .bb_0.2
jmp .exit_0
.bb_0.2:
mov dil, dl
xchg edi, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
