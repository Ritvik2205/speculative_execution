.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 37
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], dl
test bl, 45
and rcx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rcx]
or bl, 114
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf ecx, dword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], cl
jmp .bb_0.1
.bb_0.1:
not eax
lea bx, qword ptr [rbx + rsi + 76]
and rsi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rsi]
sbb bl, dil
or rbx, rdx
cmovnz rsi, rdx
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf esi, eax
nop
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
