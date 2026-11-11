.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, eax
sbb dil, bl
inc rsi
add bl, bl
or rcx, 2
js .bb_0.1
jmp .exit_0
.bb_0.1:
xchg sil, dl
sub dl, bl
and rdi, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rdi], 93
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], dil
mov dil, cl
sbb dil, cl
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
