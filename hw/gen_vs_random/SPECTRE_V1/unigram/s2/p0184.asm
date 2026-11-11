.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rcx]
add dl, 34
add dl, -105 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
movsx eax, byte ptr [r14 + rcx]
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 0
sbb al, dil
sbb bx, 96
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], dx
dec rax
and rax, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rcx]
add dil, 32 # instrumentation
sbb bl, dil
add cl, 67 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], 7
or dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
