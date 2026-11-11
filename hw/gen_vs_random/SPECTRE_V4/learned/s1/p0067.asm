.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdx]
and cl, -118
sub cl, 92
adc eax, -689629357
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], bl
cmp dl, al
or al, -88
dec al
test al, 52
xor al, -120
sbb al, 95
or dil, 89
and ax, -16777
sub al, -84
xor al, -60
xchg bx, cx
adc bl, al
add sil, bl
dec sil
add cl, dil
imul rdi, rcx, 74
sbb dil, 62
sub dl, -16
sbb cl, 12
add al, 40
xor dl, -66
and cl, 126
adc esi, 2
and di, bx
xor ax, 20236
sub dl, 107
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 2
or dl, cl
cmp dl, sil
and dl, 24
xor si, -73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
