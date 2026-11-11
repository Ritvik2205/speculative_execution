.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, al
add cl, bl
cmp bx, 90
imul rsi, rbx
add dl, 121 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rax]
mul rax
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 1 # instrumentation
and rdx, qword ptr [r14 + rcx] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rdi]
setle al
sbb eax, -403815802
lea ax, qword ptr [rsi + rdx]
and rbx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rbx]
cmovnbe cx, di
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], si
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
