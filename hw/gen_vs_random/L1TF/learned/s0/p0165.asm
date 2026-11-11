.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rbx, qword ptr [rsi]
test eax, 899472326
add sil, -61
and rcx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rcx]
and al, -68
and rax, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rax]
test rax, 404297506
sub cx, 97
add dil, sil
imul dx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
