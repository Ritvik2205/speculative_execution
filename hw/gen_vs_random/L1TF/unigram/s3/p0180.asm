.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], 58
add dl, 37 # instrumentation
cmovbe bx, dx
and rdi, 11
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
add bl, 37 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], 5
and rbx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], dx
test al, -104
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], cl
setnb cl
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], cl
mov rdx, rdi
xor cx, 113
dec di
btc rdx, 152
sbb ecx, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
