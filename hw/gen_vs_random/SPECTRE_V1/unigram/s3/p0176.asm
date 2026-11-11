.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], 89
and rdx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 22
lea rdi, qword ptr [rcx + rbx + 19444]
bswap rax
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], 26
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], ax
cmp bl, -114
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], edx
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 3
cmovnb di, di
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], 56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
