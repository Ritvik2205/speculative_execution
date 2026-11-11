.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 21 # instrumentation
adc bx, 90
add al, -44
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
and rax, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rax]
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
and al, -23
sbb cl, dl
jle .bb_0.2
jmp .exit_0
.bb_0.2:
or al, 100
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dl
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
