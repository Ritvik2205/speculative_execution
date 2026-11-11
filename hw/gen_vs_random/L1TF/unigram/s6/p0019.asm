.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rdx]
adc sil, sil
cmp cx, 96
add bl, -127 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], 43
imul rcx
inc ebx
and rcx, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rcx], rdx
and rax, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmp cx, word ptr [r14 + rcx]
test rdx, rcx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
add bl, -75 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], cx
and rdx, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
