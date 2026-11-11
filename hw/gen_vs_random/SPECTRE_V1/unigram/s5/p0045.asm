.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 94
not bl
and rbx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rbx], cx
add ax, bx
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], al
lea rdx, qword ptr [rax + rsi]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
lea bx, qword ptr [rbx + rdx]
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], bl
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], cl
lea ax, qword ptr [rcx + rdx]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 8
cmovb eax, ecx
bswap rax
and rax, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rax], 56
add al, -126 # instrumentation
and rbx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rbx]
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
