.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ecx, qword ptr [rsi + rcx + 67]
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
adc cl, -34
and rcx, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rcx]
xor dil, -42
add al, 64 # instrumentation
sbb al, dl
and rax, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rax]
sbb sil, -19
sbb edi, 10
jmp .bb_0.1
.bb_0.1:
mov esi, eax
btc dx, ax
and al, dl
lea cx, qword ptr [rsi + rdi]
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], cl
setp al
and rdi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
