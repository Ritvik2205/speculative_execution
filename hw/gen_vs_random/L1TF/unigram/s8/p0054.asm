.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], 122
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], rbx
and rax, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rcx]
lea bx, qword ptr [rbx + rcx]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 55
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rsi]
imul bx, dx, 17
sub di, 93
and rdx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rdx]
sub cl, -49
cmp eax, 951020724
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
