.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea eax, qword ptr [rbx + rsi + 64]
and rdi, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rdi]
xor bl, dil
test dil, -126
jmp .bb_0.1
.bb_0.1:
xor cl, dil
and dl, 59
sbb rax, 803312930
and rbx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rax]
and dl, 73
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
or cl, 105
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
