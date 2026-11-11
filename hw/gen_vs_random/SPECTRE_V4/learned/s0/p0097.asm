.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 58
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 44
and rdx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdx]
lea rcx, qword ptr [rbx + rdi + 11]
and rcx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rcx]
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
xor al, 59
cmovnl ax, dx
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], di
and rdi, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], edi
and rdi, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rdi]
cmovno rbx, rdi
xor bx, dx
and rsi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rsi]
lea ebx, qword ptr [rdx + rdi + 40]
and rbx, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -25
not si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
