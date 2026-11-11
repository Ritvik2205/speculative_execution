.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, bl
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
lea eax, qword ptr [rsi + rsi + 88]
add dx, -103
and rcx, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
adc bx, word ptr [r14 + rsi]
jnle .bb_0.2
jmp .exit_0
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], al
sub al, dil
sbb dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
