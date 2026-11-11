.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 33
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], sil
add dil, -75
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rax]
xor ax, 913
test sil, 47
jnle .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 50
js .bb_0.3
jmp .exit_0
.bb_0.3:
inc ecx
sub ax, -17837
sub al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
