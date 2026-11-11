.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], 57
xor al, bl
lea rsi, qword ptr [rdi]
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 48
jp .bb_0.2
jmp .exit_0
.bb_0.2:
cmp cl, dil
sbb dl, 127
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], cl
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], 14
sbb dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
