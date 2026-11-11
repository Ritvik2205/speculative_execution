.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dx, ax
add sil, 9 # instrumentation
adc sil, dil
mov cl, bl
and rbx, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rbx]
lea cx, qword ptr [rbx + rcx]
lea ax, qword ptr [rax + rcx + 28]
xor dl, dl
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], cx
jl .bb_0.1
jmp .exit_0
.bb_0.1:
setbe dil
and rdi, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 0
cmovz si, si
and rcx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rcx]
imul al
imul eax
add dl, 110 # instrumentation
cmovb rsi, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
