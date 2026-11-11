.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub sil, bl
and rcx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rcx]
cmovnp rdx, rcx
test al, cl
cmp cl, al
and rax, 0b1111111111111 # instrumentation
add si, word ptr [r14 + rax]
bswap rbx
mov al, cl
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rax]
cmovl cx, bx
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], edx
imul rsi, rdi
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], 14
movzx si, dil
sub rbx, -11
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
