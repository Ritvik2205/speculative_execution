.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub cl, -21
xor dil, -37
and rax, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rax]
lea rcx, qword ptr [rdi]
jb .bb_0.1
jmp .bb_0.2
.bb_0.1:
jp .bb_0.2
jmp .exit_0
.bb_0.2:
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], -121
test cl, -24
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
test al, -126
and rbx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rbx]
sub dx, -23
sbb ebx, 98
sbb cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
