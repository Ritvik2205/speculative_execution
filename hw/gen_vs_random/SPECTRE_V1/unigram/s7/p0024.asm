.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], dil
sub dl, 96
and dl, cl
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], 19
lea dx, qword ptr [rbx + rcx]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
cmovnz rbx, rax
lea rbx, qword ptr [rax + rdx + 76]
and rcx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rcx]
cmovz ebx, esi
bt ecx, edx
and rdx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rbx
and rdx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], -126
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
