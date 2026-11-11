.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 38
cmp dl, 95
add dil, al
test dil, 64
adc esi, 38
mov bl, al
and rax, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rax]
or dil, bl
adc edx, -125
and rbx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rbx]
add al, 40
cmp dl, dil
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
adc edx, dword ptr [r14 + rdi]
bt dx, cx
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
sub al, cl
sbb sil, 24
sbb bl, dl
sub dil, cl
add al, -82
xor cl, dl
sub cl, 18
and rsi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rsi]
add dil, -61
and dl, al
xor bl, dil
adc bl, -20
sbb ax, 7207
cmp al, 115
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
