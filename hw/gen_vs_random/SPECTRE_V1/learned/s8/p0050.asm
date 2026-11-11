.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 40 # instrumentation
btc rcx, rcx
sub bl, sil
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
xchg rdi, rbx
add al, sil
sub cl, al
test al, -126
sub rcx, 13
jnbe .bb_0.2
jmp .exit_0
.bb_0.2:
lea rcx, qword ptr [rdi]
add sil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
