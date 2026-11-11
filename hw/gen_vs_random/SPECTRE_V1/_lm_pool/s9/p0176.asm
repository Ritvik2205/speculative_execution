.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 40 # instrumentation
btc rax, rax
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
test bl, -8
mov al, dl
or dil, 80
jnp .bb_0.2
jmp .bb_0.3
.bb_0.2:
lea rdx, qword ptr [rax + rcx + 48576]
js .bb_0.3
jmp .exit_0
.bb_0.3:
lea rax, qword ptr [rdi + rdx + 99]
mov sil, dil
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], al
sbb eax, 100
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
