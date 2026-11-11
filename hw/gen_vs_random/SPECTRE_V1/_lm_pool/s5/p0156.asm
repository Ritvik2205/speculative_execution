.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, cl
test rbx, rdx
and rcx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rcx]
add dil, -75
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
test cl, -62
js .bb_0.2
jmp .exit_0
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], sil
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
xor sil, cl
neg rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
