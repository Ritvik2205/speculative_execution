.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovle dx, dx
lea ecx, qword ptr [rsi + rsi + 97]
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 84
setbe bl
setno dil
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 60
btr edx, 166
cmp bl, dl
and rdx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdx]
imul eax, ecx
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
or ebx, esi
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edi
and rdx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdx]
add bl, -64 # instrumentation
cmovnle eax, ecx
and rcx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btc word ptr [r14 + rcx], ax
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
