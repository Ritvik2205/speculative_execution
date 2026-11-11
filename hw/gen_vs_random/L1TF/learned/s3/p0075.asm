.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -48 # instrumentation
lea ecx, qword ptr [rcx + rbx]
adc sil, cl
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], cl
and rsi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
btc rsi, 43
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], ecx
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
btc bx, cx
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 99
sub dil, 95
sbb dl, cl
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 0
mov rsi, 91
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 7
cmp al, 78
or rax, 1447934463
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
