.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 21 # instrumentation
adc di, 5
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dl
sub dil, -111
inc rcx
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
test cl, -24
mov cl, dil
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rcx]
jl .bb_0.2
jmp .exit_0
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], bl
sub al, dl
and rsi, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
