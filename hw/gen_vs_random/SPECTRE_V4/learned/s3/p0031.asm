.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rax]
add eax, esi
add edi, 11
sbb eax, -1688332460
cmp al, -23
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 6
dec rcx
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
lea esi, qword ptr [rdi + rcx + 8]
cmp al, 81
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], dl
sbb al, -47
nop
and rcx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rcx]
and dl, 124 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rsi]
or dl, dl
and rsi, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], rsi
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], bx
cmp sil, 88
cmovnb esi, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
