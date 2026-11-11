.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
and rbx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btr word ptr [r14 + rbx], dx
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 6
and rdi, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], di
or dl, -8
cmovnp eax, ebx
bts ecx, 3
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], -85
and rax, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rsi]
cmovz ax, ax
xor al, 55
and rsi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rsi]
or bx, 0b1000000000000000 # instrumentation
bsf ax, bx
and rdi, rcx
or sil, -78
test al, 22
and rcx, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
