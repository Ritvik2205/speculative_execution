.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul rbx, rax, 6
and rbx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rdi]
movzx rdx, cl
btr rcx, rax
add dl, -53 # instrumentation
lea rbx, qword ptr [rcx + rsi + 53]
jmp .bb_0.1
.bb_0.1:
sub al, -3
movzx eax, dx
xor dil, bl
and rax, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 20
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 2
sub dil, -39
xor rcx, 68
mov rcx, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
