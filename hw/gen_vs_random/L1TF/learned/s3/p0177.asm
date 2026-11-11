.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rax, qword ptr [rax]
and rax, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rax]
or bl, -88
sbb bl, -88
jmp .bb_0.1
.bb_0.1:
lea dx, qword ptr [rbx + rdi + 5]
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], 66
or dil, -113
jmp .bb_0.3
.bb_0.3:
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], cl
test eax, -2032743474
add dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
