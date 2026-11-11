.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -48 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 3
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], cx
cmovnbe bx, ax
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
and rbx, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rbx]
and al, 47 # instrumentation
cmovnp eax, edx
or cx, 0b1000000000000000 # instrumentation
bsr dx, cx
bts di, 73
and rbx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rbx]
and cl, 91 # instrumentation
cmovle rax, rax
jmp .bb_0.1
.bb_0.1:
btc ax, di
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btr word ptr [r14 + rax], bx
and al, bl
and cl, -83 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rcx]
test edx, eax
and rdx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rdx]
or bx, 0b1000000000000000 # instrumentation
bsf ax, bx
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], bx
and bl, -62 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
