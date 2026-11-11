.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, -26
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
mov al, dl
xchg al, sil
and dl, -11
test al, -38
xchg ecx, edi
adc dl, 27
jmp .bb_0.1
.bb_0.1:
cmp bx, 113
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
sub ecx, -107
sub dl, sil
adc cl, sil
not bx
and dl, 126
cmp cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
