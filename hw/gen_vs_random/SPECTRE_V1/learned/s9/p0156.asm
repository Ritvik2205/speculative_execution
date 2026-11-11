.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov al, bl
lea edi, qword ptr [rbx]
and rdi, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rdi]
cmp cl, 2
not bx
and rdi, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rdi]
xchg sil, sil
lea cx, qword ptr [rax + rdi]
sbb bl, al
lea ax, qword ptr [rbx]
lea ax, qword ptr [rsi + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
