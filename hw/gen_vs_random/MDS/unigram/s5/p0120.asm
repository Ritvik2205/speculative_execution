.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test rbx, 86
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], dx
cmovnbe eax, ebx
and rcx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rcx]
cmovp cx, si
bt rdi, rax
and rcx, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rcx]
cmovnb rbx, rdi
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr edi, edi
xor al, -19
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 81
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rsi]
cmovns ebx, esi
and rsi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rsi]
and rdi, 25
cmovnbe rdx, rbx
xor bx, ax
and rsi, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rax]
test esi, 425331143
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
