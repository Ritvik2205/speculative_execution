.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, dil
xor rdi, -9
btc rdi, 221
cmovno di, ax
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 5
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], -55
and rbx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rbx], ebx
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dil
xor dl, dl
cmovnp edx, esi
and rbx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rbx]
or rdx, -48
and dil, -39
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], al
and rdx, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 7
and al, 39 # instrumentation
cmovbe bx, cx
and dl, 57 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
