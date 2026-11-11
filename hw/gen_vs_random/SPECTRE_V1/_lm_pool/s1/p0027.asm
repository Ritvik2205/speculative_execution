.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, -68
xor rbx, 50
lea ax, qword ptr [rsi + rdx + 48]
and rbx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 4
lea di, qword ptr [rdx]
xor bl, dil
add sil, cl
cmp rbx, 62
sbb al, 33
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
