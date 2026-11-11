.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 33 # instrumentation
cmovnle eax, ebx
and al, -64 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
cmovbe di, bx
bts cx, ax
and rdi, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
and bl, 44 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
or al, -8
btc rcx, rbx
and rbx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rbx]
cmovnb di, dx
btc rax, rdx
or rax, rdi
and al, -78 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rbx]
cmovb si, si
and rsi, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
