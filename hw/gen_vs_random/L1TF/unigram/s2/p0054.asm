.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], rax
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 65
and rcx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rcx]
and edx, 77
and rax, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rbx]
xor cl, 89
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], 79
bt esi, edx
and rdx, 88
cmp cl, 57
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rdx
lea rsi, qword ptr [rcx + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
