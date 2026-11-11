.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 21910
sbb cl, cl
lea rax, qword ptr [rdi]
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rdx
cmp bl, dl
adc dl, -49
and rcx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rcx]
lea ax, qword ptr [rbx + rsi]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
lea rbx, qword ptr [rdi + rbx]
adc eax, 34
lea cx, qword ptr [rdi + rbx + 48694]
and ax, 2806
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], sil
setno bl
and rsi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rsi]
imul dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
