.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], -55
and rax, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rsi]
lea rsi, qword ptr [rdi]
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], 1
cmp rdx, 33
jmp .bb_0.1
.bb_0.1:
and al, bl
lea rsi, qword ptr [rbx]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 1 # instrumentation
and ecx, 27
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], 53
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], bl
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], 33
or rax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
xor al, dil
and al, -68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
