.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rdx, rdx
sub bl, sil
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
add sil, dl
sub ax, 124
sub cl, -21
and cl, dl
xchg sil, al
test sil, 13
and ax, 2806
add dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
