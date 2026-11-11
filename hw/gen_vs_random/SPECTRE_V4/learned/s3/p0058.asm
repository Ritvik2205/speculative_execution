.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts esi, 18
or al, dil
xor dl, -66
or dil, -16
bswap edx
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
xchg rcx, rax
mov dl, dil
cmp eax, 89
adc bl, 97
and al, sil
xor cl, 13
adc eax, -983562873
or bl, cl
and rsi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rsi]
sbb dl, 53
test sil, 1
add al, 19
xchg al, sil
xor dil, dl
sbb cl, 127
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], rdx
adc bl, 79
sub al, 96
sub cl, -73
sub dil, -11
xor al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
