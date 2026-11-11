.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts ebx, 205
and bl, 56 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rcx]
cmovnbe rdx, rax
or cl, -77
and dil, -81 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rax]
and cl, -127 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rax]
bts ecx, edi
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], cl
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 0
bt ecx, edx
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 92
and cl, -127 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rdx]
cmovp dx, si
btr ebx, 0
btc rdi, rdi
cmovns rbx, rdx
bts rdx, 200
cmovnz bx, cx
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
