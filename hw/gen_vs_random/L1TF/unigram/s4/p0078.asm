.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rbx]
sub sil, 45
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], cl
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], 93
lea di, qword ptr [rax]
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], dl
lea rax, qword ptr [rbx + rcx + 22]
and rcx, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rcx], 92
and rbx, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], al
and rsi, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rdi]
bts rcx, 76
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], ax
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
