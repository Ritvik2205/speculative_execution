.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb cl, cl
and rcx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rcx]
cmp bl, dl
lea ax, qword ptr [rbx + rsi]
adc dl, 107
and ax, -22629
lea rax, qword ptr [rdi]
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rdx
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rsi]
setno bl
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], sil
lea rbx, qword ptr [rdi + rbx]
imul dx
adc eax, -655457029
and ax, 25351
lea cx, qword ptr [rdi + rbx + 48694]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
