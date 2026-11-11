.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov bl, sil
add rax, -845342150
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rax]
cmovno di, dx
inc cl
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
js .bb_0.2
jmp .exit_0
.bb_0.2:
adc esi, -66
cmp ax, 7452
and dl, sil
add cl, sil
cmp dx, 37
sub bl, -19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
