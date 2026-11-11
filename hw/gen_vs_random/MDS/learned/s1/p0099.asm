.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, dx
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rdi
cmovnz ax, cx
xor al, -28
bts eax, esi
cmovnb di, ax
btr rsi, 73
xor dl, -68
cmovnbe edx, esi
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 92
cmovb ecx, ebx
and si, di
and rcx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rcx]
sbb cl, cl
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
cmovnz ax, dx
not eax
and rdi, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rsi]
or rax, 1749358813
and ax, 28417
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
