.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdi]
xor dl, 40
cmovno rdi, rbx
and rdi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdi]
cmovz ebx, eax
and rsi, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rax]
bts ecx, ecx
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rsi]
btc ax, cx
and rax, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], si
and bl, 26 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rsi]
cmovbe dx, di
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], cl
not dl
cmovp si, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
