.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 7
and rax, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rax]
adc dl, 85
add bl, cl
cmp al, 109
xor dl, -123
sub sil, -35
cmp bl, cl
sbb bl, sil
mov dl, sil
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 5
cmp dl, bl
sub dl, sil
test bl, dil
sub dil, 35
or sil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
