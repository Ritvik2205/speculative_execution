.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rdx, rdx
sub al, sil
xor dil, dil
test al, -71
and rsi, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rsi]
lea rbx, qword ptr [rsi + rdx + 43294]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], 98
adc al, bl
sub dil, -111
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
