.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec dx
and al, -28
bt ax, 84
cmp al, -106
xor bl, 27
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
and dil, dil
dec bl
and cl, -101
cmp dil, al
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
sbb dl, -71
test sil, 16
xor ax, -29507
mov bl, cl
adc sil, -31
sbb ax, 10407
xor bl, dil
sub dil, -40
and al, 82
and al, dil
or cl, cl
adc edx, -86
and al, dl
test cl, -10
cmp cl, 59
and bl, -30
and rsi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
adc bl, dil
sub rax, -1881584175
cmovnbe rcx, rax
and rdx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
