.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], 55
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 11
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 29
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], 43
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], 117
add cl, 71 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], bx
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rcx]
cmp dl, al
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], -46
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
imul edx
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
lea ax, qword ptr [rdx]
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
