.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovl bx, ax
or ebx, -104
and rcx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rcx]
and cl, 122 # instrumentation
cmovl esi, esi
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 88
btr eax, ebx
bt cx, 22
and al, -72 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rax]
btc esi, 199
and rbx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 31
test dl, dil
or cl, -77
and bl, 46 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdi]
cmovp dx, ax
and rdx, 14
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
