.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cx, 401
and al, al
and rbx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rbx]
and eax, 461212071
cmovp dx, di
and rdx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bts word ptr [r14 + rbx], cx
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rdi
cmovnbe ebx, esi
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 2
or dx, 125
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], -22
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rsi]
xor rbx, 89
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 1
and rax, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
