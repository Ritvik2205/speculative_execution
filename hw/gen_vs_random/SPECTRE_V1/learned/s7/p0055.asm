.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 86 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rcx]
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
sbb bl, al
sub sil, dil
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], esi
sub sil, -18
sbb ebx, 84
and rsi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rsi]
mov dx, 11
jmp .bb_0.2
.bb_0.2:
test al, -126
sbb al, sil
sub cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
