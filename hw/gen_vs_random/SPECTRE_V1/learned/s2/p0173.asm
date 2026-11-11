.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 86 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rcx]
lea rcx, qword ptr [rdx]
test sil, 47
lea cx, qword ptr [rsi]
sub rdi, 93
cmp bl, cl
xchg al, sil
and dl, bl
sub al, cl
test sil, 97
and al, -23
sub rcx, 13
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
