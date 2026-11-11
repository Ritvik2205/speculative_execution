.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], al
cmovnbe eax, edi
or rdx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
xor dl, cl
test al, -84
add bl, 55 # instrumentation
lea ebx, qword ptr [rsi + rdi + 12048]
imul ax
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], -4
cmovp ax, cx
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], -58
add al, 24 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rax]
xor ax, 32760
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
