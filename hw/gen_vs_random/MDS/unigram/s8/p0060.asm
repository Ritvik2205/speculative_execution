.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bts word ptr [r14 + rbx], cx
test bl, al
and rbx, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rbx]
or dx, 125
cmovp ax, si
cmovp dx, dx
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], 67
cmovnp cx, si
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, edx
or bl, 100
and rsi, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
and rdx, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rdx]
xor edx, esi
and rsi, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rbx]
cmovp edx, eax
test al, 91
cmovbe bx, cx
and bl, 107 # instrumentation
cmovbe cx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
