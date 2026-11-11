.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, sil
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], cl
adc cl, -19
cmp dl, 71
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
mov al, dil
xor dil, bl
jmp .bb_0.3
.bb_0.3:
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
test al, 59
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], dil
add al, dl
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 50
adc bl, -76
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
