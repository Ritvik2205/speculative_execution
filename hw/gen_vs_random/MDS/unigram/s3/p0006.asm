.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rdx]
or rdx, -109
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], bl
and rsi, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rcx]
test rax, -2004802425
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], al
and rcx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rsi]
cmovno rax, rsi
xor dl, -19
and rax, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and cl, -44 # instrumentation
cmovno rsi, rdi
and rdx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rbx
cmovns ax, dx
and bl, -99 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rdx]
xor edi, 74
and rcx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rcx]
and bl, 16 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rdx]
test di, 79
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
