.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts edx, 116
and ax, -4731
and rcx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rcx]
and al, dl
and bl, 76
and rcx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rcx]
sbb al, -39
adc al, -59
xor ax, -6064
and cl, cl
and ax, si
cmp dl, al
test al, dil
sub cl, bl
and cl, -128
adc dil, dl
and rbx, 0b1111111111111 # instrumentation
adc edi, dword ptr [r14 + rbx]
sbb cx, 106
and rsi, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
add al, -6
adc cl, dl
and bl, -30
cmp al, 98
add al, -3
sub al, 26
sbb bl, dl
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
cmp bl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
