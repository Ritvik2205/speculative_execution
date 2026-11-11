.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rdx]
xchg sil, sil
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], -40
cmovl rsi, rsi
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
setnb cl
cmp sil, al
bt edx, 24
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
test sil, -101
and rbx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rbx]
mov bl, dil
dec bl
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 67
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 3
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
