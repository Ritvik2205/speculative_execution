.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -98 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], si
cmp rdx, -19
and rsi, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rsi]
sub ax, -15315
sub al, 63
add bl, dl
and dil, dl
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
lea ax, qword ptr [rsi]
sbb al, sil
lea di, qword ptr [rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
