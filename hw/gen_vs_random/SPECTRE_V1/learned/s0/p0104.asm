.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, -98 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], bx
cmp eax, -563371897
sbb ebx, 25
test al, 84
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
add bl, dl
sub bl, dl
jnle .bb_0.2
jmp .exit_0
.bb_0.2:
test al, 84
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
sub ax, 124
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
