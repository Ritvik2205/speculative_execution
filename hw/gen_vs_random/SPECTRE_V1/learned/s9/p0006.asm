.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea si, qword ptr [rsi]
xor al, al
setns bl
sub dil, sil
test rax, -1638758413
jnz .bb_0.1
jmp .bb_0.2
.bb_0.1:
setno al
lea edi, qword ptr [rcx]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], sil
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
sub di, 21
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
