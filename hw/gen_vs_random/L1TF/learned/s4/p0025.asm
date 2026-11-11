.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -4 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
mov eax, ecx
and rdx, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], al
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 74
setnp dil
add dl, 40
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
cmp ax, -79
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], 75
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 63
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 51
and rbx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rbx]
xor al, -127
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
