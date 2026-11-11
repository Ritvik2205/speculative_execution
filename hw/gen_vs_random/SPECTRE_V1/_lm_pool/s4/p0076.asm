.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 65
lea rsi, qword ptr [rdx + rcx + 57579]
test al, 59
and al, -54
sub dl, cl
test al, 59
add dil, -75
cmp rdx, -19
jmp .bb_0.1
.bb_0.1:
lea rbx, qword ptr [rax + rcx + 52]
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
