.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rax, qword ptr [rdi]
and ax, -22629
adc dl, 48
lea ax, qword ptr [rbx + rsi]
and rcx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rcx]
cmp bl, dl
sbb cl, cl
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rdx
jb .bb_0.1
jmp .exit_0
.bb_0.1:
setno bl
lea cx, qword ptr [rdi + rbx + 48694]
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], sil
and ax, 2806
adc eax, 1725322202
imul dx
and rsi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rsi]
lea rbx, qword ptr [rdi + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
