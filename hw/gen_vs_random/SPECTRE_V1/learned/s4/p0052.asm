.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 21 # instrumentation
adc bx, 17
cmp esi, 16
sub dl, 96
sub al, sil
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
btc ebx, 218
test al, 34
inc ecx
and bl, dl
setnz al
jmp .bb_0.2
.bb_0.2:
test al, 34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
