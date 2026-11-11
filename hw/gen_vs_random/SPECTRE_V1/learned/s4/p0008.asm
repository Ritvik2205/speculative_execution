.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -57 # instrumentation
cmovo rax, rdi
and ax, 21910
test rdx, 1657596343
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 25
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
sub dl, cl
adc al, -82
add cl, dl
mov al, sil
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
test cl, -120
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
