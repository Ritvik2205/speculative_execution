.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -116
lea ax, qword ptr [rcx]
sub bl, -19
and sil, al
and al, -54
and dil, -114
and rbx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rbx]
sbb ecx, 29
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
sbb cl, 105
xchg rsi, rbx
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], -69
and rdx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
and al, -54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
