.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 3
xor rsi, -117
and rax, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rcx]
and dil, dil
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 70
btc ebx, ecx
and di, cx
and rbx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], ecx
or si, -12
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], bx
and rax, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rax]
cmovl si, dx
btc ax, ax
and al, -86 # instrumentation
cmovns ax, dx
or rdx, -109
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
