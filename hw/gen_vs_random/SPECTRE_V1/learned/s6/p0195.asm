.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
sbb bl, -41
adc ax, -614
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], di
sbb al, 49
and rbx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rbx]
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
adc al, -82
jnle .bb_0.2
jmp .exit_0
.bb_0.2:
cmp ax, 7452
adc dl, 107
sub al, sil
add al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
