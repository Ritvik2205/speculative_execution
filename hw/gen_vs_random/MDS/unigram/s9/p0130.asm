.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rbx], eax
and dil, -116 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 4
or rsi, 86
and rsi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], rdx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
cmovnp rdx, rbx
test di, dx
and rsi, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], -45
test esi, 1857129931
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
and rax, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rax]
and bl, 98 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rdx]
bts bx, di
cmovns dx, ax
bts edx, 189
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
