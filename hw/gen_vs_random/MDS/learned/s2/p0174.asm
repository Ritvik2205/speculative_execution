.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
btr di, 109
and rsi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rsi]
or bl, cl
and rbx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], -41
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], -69
jmp .bb_0.1
.bb_0.1:
and al, 12 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdi]
add al, 38
and rdx, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rcx], si
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 0
not eax
and rdi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 18
neg ax
or rax, rcx
cmovnp bx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
