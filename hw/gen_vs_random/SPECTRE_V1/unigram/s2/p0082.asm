.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr rdi, 32
add cl, 63 # instrumentation
cmovl cx, ax
and rbx, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rdi]
bt rax, 95
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rbx
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], cl
lea ecx, qword ptr [rdi + rcx + 93]
mov al, dil
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 7
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], ecx
mov ecx, eax
and rax, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rsi]
test esi, 79
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
