.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 87 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rbx]
cmp esi, 63
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], bl
and rsi, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rsi]
add al, -65
and bx, -118
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
setno sil
and rcx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rbx]
add bl, -9 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], 1
imul ebx, eax, 63
lea cx, qword ptr [rbx + rdi + 41]
add al, -39 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rsi]
lea rdx, qword ptr [rsi + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
