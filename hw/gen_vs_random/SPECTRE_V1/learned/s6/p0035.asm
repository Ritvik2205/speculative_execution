.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -47
xor ax, 913
and sil, 111
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnle .bb_0.2
jmp .bb_0.3
.bb_0.2:
add eax, 1938514106
jns .bb_0.3
jmp .exit_0
.bb_0.3:
sub dl, -12
test bl, -8
add dl, 47
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
sbb cl, 105
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
