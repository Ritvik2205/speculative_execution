.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt bx, 253
and cl, -53 # instrumentation
cmovbe eax, ecx
btc esi, 199
and rsi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rsi], di
and rcx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 70
and rcx, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rdx, rdx
and rax, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 6
bts rsi, 205
cmovns si, dx
and rdi, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rdi]
or cx, 49
xor sil, -14
btr bx, 74
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
