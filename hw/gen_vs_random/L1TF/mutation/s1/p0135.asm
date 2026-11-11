.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, 30996
or rdx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
xor dl, cl
test al, -32
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], -73
and rsi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rsi]
add bl, 55 # instrumentation
lea ebx, qword ptr [rsi + rdi + 12048]
add al, 24 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], -4
and rsi, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rsi]
cmovp ax, cx
cmovnbe eax, edi
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
imul ax
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
