.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
sub dl, bl
xchg bl, dl
mov al, cl
imul rsi, rcx, 63
and rax, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rax]
adc al, -59
and rcx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rcx]
mov bl, cl
add dl, cl
xor ax, -22861
and rcx, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
