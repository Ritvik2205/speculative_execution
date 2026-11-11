.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 70
cmp dil, bl
cmovno ax, dx
test dil, -116
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], sil
jns .bb_0.2
jmp .bb_0.3
.bb_0.2:
js .bb_0.3
jmp .bb_0.4
.bb_0.3:
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], di
cmp cl, dl
xor ax, 913
jl .bb_0.4
jmp .exit_0
.bb_0.4:
or al, 100
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
