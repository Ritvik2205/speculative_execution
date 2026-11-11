.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, -64
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 4
and rax, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rax]
sub bx, dx
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], dil
sub dl, cl
and rcx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rcx], 7
lea rcx, qword ptr [rax]
bswap rsi
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
adc edx, 58
lea ax, qword ptr [rsi + rax + 56494]
and rcx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rcx]
lea si, qword ptr [rdx + rdi + 17]
and rcx, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
