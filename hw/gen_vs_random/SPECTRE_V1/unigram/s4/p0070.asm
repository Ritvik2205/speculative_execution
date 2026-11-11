.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, edx
and rax, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rdx]
lea edx, qword ptr [rbx]
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], ecx
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
xor cl, -103
sbb esi, -4
cmovl ebx, eax
jp .bb_0.1
jmp .exit_0
.bb_0.1:
cmovnbe rax, rdx
sbb dil, 37
lea di, qword ptr [rsi]
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
imul rsi, rcx
and rcx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
