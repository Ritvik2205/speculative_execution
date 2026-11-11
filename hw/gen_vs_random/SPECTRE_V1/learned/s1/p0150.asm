.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, -31
cmp edx, 44
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 99
and rdx, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rdx]
and cl, bl
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
sbb bl, -41
jnbe .bb_0.2
jmp .bb_0.3
.bb_0.2:
jno .bb_0.3
jmp .exit_0
.bb_0.3:
and rbx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rbx]
add dl, sil
sbb dl, 127
and rcx, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rcx]
test rax, -1638758413
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
