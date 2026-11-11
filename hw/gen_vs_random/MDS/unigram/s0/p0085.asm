.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 0
and cl, bl
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
cmovz rdx, rbx
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rbx
and rax, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 1
or bl, al
cmovnz ebx, ebx
cmovbe ecx, eax
test esi, ebx
and rdi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dil
and rax, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rdi]
cmovns cx, bx
and rdx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], dx
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], 120
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 45
cmovp rsi, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
