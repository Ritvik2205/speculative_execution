.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul cl
sub cl, dl
add bl, 56 # instrumentation
and rbx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edx
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rdx
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], dl
cmovnb rax, rsi
not dx
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
adc bx, word ptr [r14 + rax]
cmp dil, al
cmovnle si, ax
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 27
and rdi, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 2
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 5
and rax, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
