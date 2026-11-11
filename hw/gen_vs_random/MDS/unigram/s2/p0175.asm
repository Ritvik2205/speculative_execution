.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 85
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 2
cmovns eax, eax
and rdi, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 3
cmovnb bx, bx
and rcx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rcx], 73
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 2
and rsi, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rsi]
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rax
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 287872877
and bl, -30 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rdi]
cmovl rax, rdi
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], ecx
and cl, 113 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rsi]
and ax, bx
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], di
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
cmovns ecx, edi
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], 15
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
