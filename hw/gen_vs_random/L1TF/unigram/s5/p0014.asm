.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rsi]
inc al
and rsi, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], di
cbw
add dl, 85 # instrumentation
cmovp di, di
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], 109
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], edx
setnle al
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
or cx, ax
and rcx, 0b1111111111111 # instrumentation
movsx rax, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rdi]
cmp dl, al
add bl, -52 # instrumentation
and rcx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
