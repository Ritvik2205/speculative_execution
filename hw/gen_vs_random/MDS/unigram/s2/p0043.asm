.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdx]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, eax
and rsi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rsi]
cmovns bx, di
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 27
and rcx, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rcx]
or dil, -57
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], edi
jmp .bb_0.1
.bb_0.1:
bts rdi, 85
and cx, dx
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 2
and rax, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rbx]
or dl, 22
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], dx
and cl, -101
cmovns edx, edx
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], rdx
and rsi, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
