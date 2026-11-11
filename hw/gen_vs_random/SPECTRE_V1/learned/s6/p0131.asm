.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
adc dl, -49
and bl, al
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rsi]
and al, -54
jns .bb_0.2
jmp .exit_0
.bb_0.2:
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], bl
sbb eax, 125
sub sil, -18
add dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
