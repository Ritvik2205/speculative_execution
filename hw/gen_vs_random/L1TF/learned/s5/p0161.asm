.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], dl
adc bl, cl
and rdi, rax
lea rdx, qword ptr [rcx + rsi + 38]
and rcx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rcx], 121
and rbx, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rdx]
or dil, -113
lea rbx, qword ptr [rdx + rcx + 10]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
