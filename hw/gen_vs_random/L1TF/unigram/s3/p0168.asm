.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], bx
mov sil, dil
add bl, -54 # instrumentation
setz cl
setb al
xor al, bl
and rcx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rsi]
inc bl
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], dil
jmp .bb_0.1
.bb_0.1:
add bl, -77 # instrumentation
cmovns dx, si
movsx rcx, cx
and rdi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], cx
cmovnb edx, ecx
and rax, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
