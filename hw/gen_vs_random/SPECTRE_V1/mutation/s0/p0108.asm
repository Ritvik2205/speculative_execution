.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb cl, cl
lea ax, qword ptr [rbx + rsi]
and ax, -22629
lea rax, qword ptr [rdi]
and rcx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rdx
cmp bl, dl
adc dl, 48
jb .bb_0.1
jmp .exit_0
.bb_0.1:
lea rbx, qword ptr [rdi + rbx]
adc eax, 56
and rsi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rsi]
setno bl
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], sil
and ax, -13240
lea cx, qword ptr [rdi + rbx + 48694]
imul dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
