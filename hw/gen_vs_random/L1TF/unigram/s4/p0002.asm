.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, bl
bswap rbx
cmovno eax, eax
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], cl
and rcx, 0b1111111111111 # instrumentation
adc bx, word ptr [r14 + rcx]
test rdx, 39
bts ecx, edi
mov cx, si
btc rbx, rdi
and rcx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rsi]
add dl, -18 # instrumentation
and rax, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rax]
xor dl, -82
add rbx, rsi
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], 67
cmovp di, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
