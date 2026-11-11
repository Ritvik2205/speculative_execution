.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rbx]
test dl, 113
add al, -44
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dil
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], -31
cmp bl, dl
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], cl
jmp .bb_0.2
.bb_0.2:
adc dil, 97
jmp .bb_0.3
.bb_0.3:
add al, al
js .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
