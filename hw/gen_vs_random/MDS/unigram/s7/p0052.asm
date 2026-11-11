.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, -85
and rdx, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rdx]
and al, -97 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rdx]
xor al, 122
and cl, -85 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rbx]
btc cx, bx
and rdi, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rdi]
bts rcx, rbx
jmp .bb_0.1
.bb_0.1:
or dl, -31
cmovl esi, ecx
btc rcx, rcx
and rcx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rcx]
cmovp ebx, edi
or rdx, -48
or bx, dx
and rax, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rax]
and dl, -73
and rbx, 65
or bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
