.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -89 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 18
and rcx, 0b1111111111111 # instrumentation
cmp ax, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rdx]
add bl, -118 # instrumentation
cmovp cx, cx
and rax, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rax]
add di, si
setp bl
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], 5
and rax, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rax]
sbb dil, dil
and rcx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rcx]
add al, -39 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rcx]
add al, -101 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rbx]
xor ax, 913
cmovnb cx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
