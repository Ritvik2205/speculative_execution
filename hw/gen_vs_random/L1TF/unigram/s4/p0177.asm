.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
lea dx, qword ptr [rcx + rdx]
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rcx
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], 61
and rbx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
imul ecx
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 14
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
xchg dx, ax
adc rax, -457629677
and rdx, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rdx]
xor ecx, 15
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
