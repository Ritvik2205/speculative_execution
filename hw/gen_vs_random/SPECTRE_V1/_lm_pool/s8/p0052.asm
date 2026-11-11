.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov dl, sil
add edi, -91
test bl, -8
sub al, cl
xor al, cl
and dl, -92
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
sbb dl, cl
jnz .bb_0.2
jmp .exit_0
.bb_0.2:
test al, 84
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
