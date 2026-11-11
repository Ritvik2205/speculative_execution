.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], 109
and rdi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdi], ax
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], dil
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
add bl, -31 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rdx]
or ax, -10161
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], bl
and al, bl
and rdi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], al
and rdi, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rax]
dec cl
xor cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
