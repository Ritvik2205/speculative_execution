.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, 32
cmp sil, bl
or al, dil
adc al, dil
adc dl, 51
sub bl, al
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
sub al, 59
sbb dl, -71
test edx, -38580719
sbb cl, bl
test al, 18
cmp eax, -1538116527
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 25
adc bl, al
add al, dil
and al, -12
adc cl, dl
sub edx, -122
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], 34
sbb al, cl
add dl, -8
sub bl, al
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
mov cl, bl
sbb bl, 121
sbb cl, 12
and dl, 124
xor dil, bl
or cx, 59
add dl, dl
and al, 100
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and al, 41
and rsi, 0b1111111111111 # instrumentation
adc edi, dword ptr [r14 + rsi]
xor ax, 20236
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
