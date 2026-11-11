.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], 57
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], dl
lea di, qword ptr [rdx]
xchg al, dil
and edi, 8
and edi, 90
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 1 # instrumentation
and rdx, qword ptr [r14 + rsi] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
or bx, 0b1000000000000000 # instrumentation
bsf ax, bx
and rdx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdx]
lea rsi, qword ptr [rax + rbx + 43]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rax]
lea si, qword ptr [rax]
test ecx, 84
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
