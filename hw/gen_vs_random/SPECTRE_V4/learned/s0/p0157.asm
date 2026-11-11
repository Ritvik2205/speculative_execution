.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
or cl, dil
or dil, al
and rbx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], sil
cmp al, dl
and bl, cl
adc al, sil
cmp sil, 113
adc sil, cl
sub sil, 71
dec dl
add dil, -84
cmp sil, 127
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 48
test cl, -119
xor edx, 50
sub dl, 107
sub dl, bl
xor al, dil
or sil, -47
and rcx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rcx]
sbb sil, 24
and dl, 126
or eax, -646827727
and al, 92
adc al, dil
not al
add al, dl
and al, 100
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
or dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
