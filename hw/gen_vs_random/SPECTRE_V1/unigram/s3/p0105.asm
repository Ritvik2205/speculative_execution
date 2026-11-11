.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul rbx, rax
add dil, -123 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rcx]
test sil, 87
sub rbx, -128
cmp rsi, rax
and rdi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdi], edi
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
not sil
imul eax, edx
sub rax, -679751639
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], 100
and rbx, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rbx]
setb dil
lea bx, qword ptr [rcx]
cmovnbe ax, cx
and rax, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rax]
cmovnb dx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
