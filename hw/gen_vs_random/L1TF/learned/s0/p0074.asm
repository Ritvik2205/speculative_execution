.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cx, 32579
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], dl
xchg ecx, edx
cmovnle rcx, rcx
or cl, dil
lea rsi, qword ptr [rdx]
sub al, 25
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], edi
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], ax
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
bt rsi, rdx
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], 36
lea rdx, qword ptr [rdi + rsi]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
