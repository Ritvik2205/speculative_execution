.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rsi]
test bl, -16
sub al, 86
or dil, -16
and rdx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rdx]
sub dl, bl
sbb al, -43
and rax, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rax]
or dil, -16
xchg rbx, rax
sub dil, -11
xor al, 23
sbb dil, 5
sbb cl, 35
adc sil, bl
and cl, dil
and rsi, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
sub sil, 71
adc al, -59
xor bl, -126
and ax, 13045
and rbx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rbx]
sub al, 127
adc al, dil
adc dl, 92
movsx si, bl
test bl, dil
sub al, 26
sub al, 59
bts bx, 102
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
