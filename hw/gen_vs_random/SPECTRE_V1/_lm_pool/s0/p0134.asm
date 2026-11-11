.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec ax
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
sbb dil, dl
sub dl, -12
sub cl, -47
and rdx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rdx]
lea ebx, qword ptr [rsi]
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], al
or esi, -74
jmp .bb_0.2
.bb_0.2:
cmovnp rcx, rdx
sub dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
