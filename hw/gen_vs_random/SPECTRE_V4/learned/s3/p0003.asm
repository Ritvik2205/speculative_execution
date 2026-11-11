.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rsi]
test al, 57
add sil, al
btc rsi, rdi
xchg edi, edx
sub bl, cl
and rcx, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rcx]
movzx si, cl
cmp edx, 4
xor cl, dil
xor ax, -22861
sub cl, dl
add al, -29
and al, -1
bts ebx, 189
sbb sil, -11
sub dil, -40
add al, 40
adc cl, dl
cmp ax, -18179
sub al, 0
add al, sil
adc bl, -20
xor cl, al
or dl, cl
adc edx, -125
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
