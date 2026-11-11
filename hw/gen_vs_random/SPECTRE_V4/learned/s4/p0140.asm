.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 114
sub al, 69
adc dil, -17
and dil, -61
cmp bl, 12
cmp edx, 4
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 111
sub sil, 71
cmp al, 105
and al, -118
add dil, -84
and rax, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rax]
sub bl, 66
and rdi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdi]
test bl, 87
and bl, -119
xor dl, sil
xor sil, cl
test eax, 1947430392
and dl, dil
and cl, -118
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], al
xchg bl, cl
cmp sil, dil
cmp bl, -16
cmp dx, -67
and dl, sil
and rsi, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rsi]
xor dl, cl
and bl, al
and bl, -30
cmp al, -116
adc bl, al
and rsi, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rsi]
neg dil
mov al, dil
add bl, al
and bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
