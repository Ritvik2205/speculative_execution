.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], dx
and rcx, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rcx]
and dl, 91 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 31
xor bx, 85
and rdx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rdx]
cmovp dx, cx
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], rdx
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], 70
and bl, 52 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rdx]
cmovnl dx, cx
cmovnl bx, di
and rax, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], -23
cmovz dx, ax
and rdi, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdi], ecx
and dil, 36
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], -116
or rdx, 62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
