.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, dl
xor dil, -37
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
sub al, bl
jmp .bb_0.1
.bb_0.1:
test dil, -116
jp .bb_0.2
jmp .exit_0
.bb_0.2:
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], sil
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], dil
lea rax, qword ptr [rdx + rsi + 62]
lea rdx, qword ptr [rax + rbx + 48]
xor al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
