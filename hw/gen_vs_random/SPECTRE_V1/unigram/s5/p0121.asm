.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -53 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], 17
imul si, bx, 75
and rbx, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], dx
adc bl, dil
and rbx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdx]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rcx]
cmovp ax, bx
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], si
add bl, 52 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], -113
sbb ax, 82
and rsi, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
