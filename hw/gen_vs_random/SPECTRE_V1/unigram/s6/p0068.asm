.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, 71
cmovno ax, bx
and rsi, 0b1111111111111 # instrumentation
cmp di, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdi]
cmovs cx, dx
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], dl
jl .bb_0.1
jmp .exit_0
.bb_0.1:
sub bl, bl
not dx
sub eax, -911655926
imul dl
and rax, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rax
btr ax, 197
and rsi, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rsi]
adc al, cl
add bl, -118 # instrumentation
cmovp dx, dx
sub al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
