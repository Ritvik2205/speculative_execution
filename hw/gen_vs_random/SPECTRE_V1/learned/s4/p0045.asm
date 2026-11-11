.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 21 # instrumentation
adc bx, 77
mov cl, sil
lea eax, qword ptr [rsi + rsi + 62]
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 8
inc al
mov al, dil
lea rbx, qword ptr [rsi + rax + 78]
test dil, -116
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], 89
add cl, al
sbb al, 49
xor dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
