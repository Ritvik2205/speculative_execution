.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rbx]
test ebx, -961564216
and rax, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rbx]
test al, dil
and rbx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rbx]
or al, -17
cmovnle bx, ax
and rax, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rax]
cmovno rsi, rax
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], -4
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 84
and rdi, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rcx]
cmovp ebx, edx
and edx, -44
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
