.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp bl, dl
sbb cl, cl
and ax, 32540
adc dl, 107
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rdx
lea ax, qword ptr [rbx + rsi]
and rcx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rcx]
lea rax, qword ptr [rdi]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
lea cx, qword ptr [rdi + rbx + 48694]
setno bl
and rsi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rsi]
imul dx
lea rbx, qword ptr [rdi + rbx]
adc eax, 34
and ax, 2806
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
