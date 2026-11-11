.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, -101
xor cx, -80
and rax, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rax]
test al, -24
and al, dl
adc esi, 45
and rdi, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rdi]
sbb al, -43
dec dil
mov dl, al
sbb bl, -79
adc dl, 34
xchg rax, rbx
adc al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
