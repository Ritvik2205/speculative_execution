.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rax]
and dl, 18 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rax]
btc edi, edx
cmovbe rbx, rdi
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], rbx
and rbx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rbx]
and rdx, rcx
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rsi]
or al, 25
cmovno dx, ax
and rbx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 2
and al, 49 # instrumentation
cmovp rcx, rax
xor dl, 8
and bl, 33 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rdx]
cmovnp rax, rdi
cmovo rdi, rdi
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
