.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
and rdi, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], al
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], dil
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], 109
and rdi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdi], ax
and al, bl
or ax, -18131
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], bl
dec cl
add bl, -31 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdi]
xor cl, dl
and rsi, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
