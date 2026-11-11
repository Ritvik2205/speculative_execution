.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -8
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], sil
mov al, bl
and bl, dl
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
test bl, -8
jl .bb_0.2
jmp .exit_0
.bb_0.2:
sbb dl, dil
or dl, sil
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
