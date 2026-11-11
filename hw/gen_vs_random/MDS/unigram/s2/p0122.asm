.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf edx, ebx
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], 5
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rax]
cmovno di, di
and rcx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rcx]
and al, 54 # instrumentation
cmovnp bx, bx
and bl, 121 # instrumentation
bt rdx, 67
and eax, 366961170
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rax
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], edx
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], eax
and rax, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rax]
or cx, 0b1000000000000000 # instrumentation
bsf bx, cx
and rbx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 40
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rbx]
and cl, 49 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rax]
or rax, -1561934807
cmovnb rbx, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
