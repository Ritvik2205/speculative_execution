.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 104 # instrumentation
mov eax, 43
and dl, 32
test cl, 20
or dil, -113
lea cx, qword ptr [rdi + rdi + 98]
jmp .bb_0.1
.bb_0.1:
add cl, 89 # instrumentation
adc cl, al
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], bl
jmp .bb_0.2
.bb_0.2:
cmp cx, 93
imul al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
