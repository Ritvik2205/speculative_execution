.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rcx, -121
sub cx, di
test al, -24
or dl, cl
and rbx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rbx]
test dl, -102
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
cmp al, sil
cmp eax, 64
sub al, dl
mov sil, bl
sub cl, dl
and al, 41
sbb al, dil
test dil, -26
and bl, -60
and al, 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
