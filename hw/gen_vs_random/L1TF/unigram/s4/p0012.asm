.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rcx], 66
adc eax, 457059541
and rax, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rsi]
add edx, 56
lea cx, qword ptr [rcx]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rsi, qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
add al, 83 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rdi]
sub ebx, 72
and rbx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rbx], 54
xchg ecx, eax
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rcx]
cmp eax, 123533400
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 90
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
