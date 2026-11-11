.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec di
and rax, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rax]
and bl, al
and rax, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rax]
or rax, 185991441
mov cl, bl
or cl, sil
cmovle rbx, rcx
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
mov dl, dil
cmp dil, sil
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
sub bl, al
xor dl, sil
dec al
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
or dx, 65
sub cl, 78
adc cl, dil
or al, dil
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], cl
xor al, dl
mov cl, sil
test dl, -102
sub dl, bl
adc cl, dl
and rax, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rax]
sbb dil, sil
xor ax, -6064
and al, dil
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], sil
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], al
sub dil, -40
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
