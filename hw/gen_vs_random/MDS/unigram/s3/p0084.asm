.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not bl
and rax, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 72
and al, -115 # instrumentation
cmovl dx, ax
and rcx, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rcx]
or ecx, 94
and rcx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rsi]
or dl, -115
btr si, 23
and rdx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdx]
and al, 122 # instrumentation
cmovnbe eax, ecx
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 7
and rsi, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rsi]
and cx, dx
and al, -61 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rdi]
or al, -8
and rbx, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rbx]
xor al, -28
cmovnb bx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
