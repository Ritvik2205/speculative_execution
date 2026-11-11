.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec di
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], -121
sub cl, -21
sbb ecx, 16
sub al, bl
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnz .bb_0.2
jmp .exit_0
.bb_0.2:
adc cx, -30
lea di, qword ptr [rsi + rcx]
sbb sil, dl
cmp rax, 1189904463
lea ebx, qword ptr [rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
