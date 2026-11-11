.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, -1434249782
and rdx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdx]
bt dx, ax
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], bl
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], 48
and rbx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btr word ptr [r14 + rbx], di
cmovb ax, ax
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], -31428
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], -97
btc rdi, rcx
sbb ecx, 36
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr edi, eax
sbb cl, dil
and rdx, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rdx]
mul esi
and rax, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rax]
cmovnp eax, eax
cmovnle cx, cx
cmovz cx, si
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
