.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], rcx
adc sil, dl
adc bl, 35
cmp al, -53
mov cl, 14
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
test al, -26
cmp ax, -18179
or cl, -104
and bl, -30
sub dl, bl
sbb al, -43
and al, -87
or dl, 71
sub cl, sil
sub bl, 66
mov dl, sil
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
