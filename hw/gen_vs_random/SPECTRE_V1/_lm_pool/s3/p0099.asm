.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], si
lea rcx, qword ptr [rdx]
add bl, 70
and rbx, rcx
sub cl, dil
jp .bb_0.1
jmp .exit_0
.bb_0.1:
sub cl, -47
sbb eax, 100
sbb sil, bl
xor rax, -1905683998
sub dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
