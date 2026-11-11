.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -16 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], dx
sub al, dil
lea rbx, qword ptr [rdi + rdx + 95]
cmp bl, cl
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], -121
cmp cl, dil
xchg edi, ecx
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and dil, dl
not ebx
test dl, -105
and rbx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rbx]
sbb al, 118
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
