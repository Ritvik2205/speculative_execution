.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, sil
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], bl
movzx edi, cx
test al, 48
sub dl, sil
cmp cl, dl
sbb dil, cl
and al, sil
dec bl
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
test cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
