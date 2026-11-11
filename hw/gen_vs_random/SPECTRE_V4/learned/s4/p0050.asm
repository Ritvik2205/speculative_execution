.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rax]
sbb bl, -75
sbb cl, bl
cmp rdx, -49
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], 51
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 43
cmp al, -116
sbb bl, dl
and rdx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
adc dil, cl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
inc eax
xor dl, -66
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
xor al, -120
test al, cl
and dl, -53
and dl, bl
xor sil, 22
jmp .bb_0.1
.bb_0.1:
adc sil, al
mov bl, cl
or cl, 12
xor al, -60
sub dil, cl
cmp cl, 100
or al, al
mov cl, dl
add al, -4
cmp al, dl
or cl, 66
add edx, 89
mov bl, cl
cmp al, -1
adc cl, 6
cmp sil, 113
or ax, -13633
add eax, -105
add dil, 75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
