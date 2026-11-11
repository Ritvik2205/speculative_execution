.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 84
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], sil
sub bl, cl
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], 78
test dil, -116
xchg al, cl
test dl, -36
lea si, qword ptr [rax + rsi + 82]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], bl
sub dx, -23
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
