.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], bx
and cl, 34 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rcx
cmovbe di, cx
and rdx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rdx]
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr esi, ebx
cmovnb rdx, rbx
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, edi
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], bx
or dil, cl
and rsi, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rsi]
cmovp ecx, ecx
cmovl rbx, rsi
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 12
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rsi]
or dl, cl
cmovb cx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
