.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 2
and rsi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rsi]
sub al, dl
test bl, -8
and rbx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rbx]
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
test dl, 113
jmp .bb_0.2
.bb_0.2:
mov bl, al
and rdi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rsi]
add sil, bl
add ax, 8031
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
