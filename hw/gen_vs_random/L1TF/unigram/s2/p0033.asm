.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], -103
add sil, -61
add bl, dil
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 92
bts eax, edx
xor dl, dil
jmp .bb_0.1
.bb_0.1:
sbb rdx, rsi
lea rdi, qword ptr [rcx + rbx + 99]
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], dx
and rcx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rsi]
mov rsi, 28
imul bx, dx, 71
and rsi, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
