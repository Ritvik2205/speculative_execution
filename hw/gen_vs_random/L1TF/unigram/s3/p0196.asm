.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovl rdi, rax
and rsi, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rsi]
mov bl, al
xchg dx, dx
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], ecx
xor dl, dil
and rbx, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 75
cmp dil, 21
cbw
add cl, dil
lea rax, qword ptr [rbx]
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], rdi
xor dl, al
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], esi
add di, 59
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
