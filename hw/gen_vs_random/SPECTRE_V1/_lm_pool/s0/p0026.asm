.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 86 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], dil
and dil, -93
sbb al, -112
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub al, -89
sub dl, cl
jmp .bb_0.2
.bb_0.2:
cmp al, dl
sbb bl, dil
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
mov al, bl
sub al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
