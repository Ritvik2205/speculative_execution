.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rdx, qword ptr [rcx]
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rsi], rcx
add edi, 90
mov al, bl
and rcx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rcx], 63
xor rax, 20
and rax, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rsi
jmp .bb_0.1
.bb_0.1:
cmp cl, cl
lea edi, qword ptr [rdi]
cmovb ecx, eax
and rdi, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rdi], 79
lea rax, qword ptr [rdi + rdx + 89]
movzx ax, dl
test dl, 84
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
