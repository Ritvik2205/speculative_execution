.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dx, 26
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], dil
and rsi, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rsi]
bt ecx, 204
and rdx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rdx]
and sil, 52
sbb al, 118
sub cl, sil
sbb eax, -417098439
add dl, 47
test bl, -8
sub bl, -19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
