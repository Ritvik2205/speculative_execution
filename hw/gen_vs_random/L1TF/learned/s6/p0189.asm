.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rax, rax
sub bl, cl
and sil, -90
jmp .bb_0.1
.bb_0.1:
or al, bl
or al, -5
xor dl, cl
sbb bl, sil
jnle .bb_0.2
jmp .bb_0.3
.bb_0.2:
cmp si, 55
jmp .bb_0.3
.bb_0.3:
xor dl, cl
or rax, 1362710293
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
