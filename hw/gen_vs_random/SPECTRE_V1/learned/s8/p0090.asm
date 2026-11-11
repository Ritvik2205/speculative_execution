.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, dl
mov al, dl
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], rax
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], 84
sub al, bl
mov dl, dil
jnle .bb_0.2
jmp .bb_0.3
.bb_0.2:
sub cl, sil
cmp bl, cl
jns .bb_0.3
jmp .exit_0
.bb_0.3:
mov sil, 4
sbb sil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
