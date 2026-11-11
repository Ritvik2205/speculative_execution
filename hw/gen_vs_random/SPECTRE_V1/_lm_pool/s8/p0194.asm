.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rbx]
sub dl, 71
xor bl, sil
or al, 19
lea dx, qword ptr [rcx + rsi + 60]
test cl, -33
sbb bl, dl
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
add cl, dil
xor al, dl
jmp .bb_0.2
.bb_0.2:
lea rax, qword ptr [rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
