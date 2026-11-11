.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea di, qword ptr [rbx]
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], -40
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], 99
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
xor rdi, rcx
bts esi, edx
xor dil, dil
xchg cl, bl
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], 53
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 7
and rsi, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rsi]
and cl, cl
mov dl, al
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
cmovb bx, cx
and rax, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
