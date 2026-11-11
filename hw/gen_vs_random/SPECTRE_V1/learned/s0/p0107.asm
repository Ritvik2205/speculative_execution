.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdx], 97
lea ax, qword ptr [rdx]
add al, -109
sbb dl, al
adc ebx, 89
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], cl
sub bl, sil
sbb ecx, 51
add dil, -75
sbb eax, 2098460225
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
