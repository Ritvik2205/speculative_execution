.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], dil
cmovnle bx, bx
adc ecx, 51
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rcx], 62
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], -62
cmovnbe rax, rdi
cmovz esi, eax
and rbx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rbx]
sbb sil, -19
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 41
sbb rsi, 31
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], edx
lea rdi, qword ptr [rbx + rdi + 45901]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
