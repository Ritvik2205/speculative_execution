.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], -31
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], 81
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rcx
cmp dl, bl
add dil, 72
or al, dl
or rsi, -14
jl .bb_0.1
jmp .exit_0
.bb_0.1:
test eax, 88788211
sub al, 63
lea rbx, qword ptr [rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
