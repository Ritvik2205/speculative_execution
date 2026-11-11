.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rbx]
cmovp ebx, ecx
or rbx, rsi
and rdi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdi], edx
and bx, si
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], rbx
dec al
and rcx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rcx]
sub rax, 788906357
lea dx, qword ptr [rdx + rcx + 3]
dec si
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], -31
add dl, dil
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
or bx, 85
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
