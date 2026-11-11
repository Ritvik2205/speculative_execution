.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdx]
xor dl, -66
sbb bl, sil
xchg rdx, rsi
xchg dl, dil
sub dl, -16
mov dil, al
cmp rax, -1247892360
adc sil, al
add al, dil
and dl, bl
cmp cl, 59
sbb cl, 40
or dl, 71
cmp bl, dl
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], sil
and cl, 126
and dx, -107
adc cl, -86
add al, -6
adc al, -117
btc rdi, rdx
adc cl, bl
xchg eax, esi
mov bl, al
add bl, dil
sub bl, -98
sbb al, -43
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
