.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rsi]
sub esi, 17
and rsi, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rsi]
xchg esi, edi
and rbx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], 46
xchg esi, ecx
jmp .bb_0.1
.bb_0.1:
sub dx, 34
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], edi
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
