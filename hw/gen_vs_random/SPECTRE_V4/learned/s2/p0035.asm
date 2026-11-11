.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
cmp sil, -100
test al, -38
sbb al, 70
adc dil, al
sbb dl, al
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
sub cl, dil
and rsi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rsi]
xor ax, 45
cmp bl, dil
xor al, -31
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
