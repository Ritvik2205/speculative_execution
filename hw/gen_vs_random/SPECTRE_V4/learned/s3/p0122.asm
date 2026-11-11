.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
and al, dil
sub dl, sil
adc dl, 69
btc rbx, rax
test al, 27
sub al, 54
add bl, dil
adc sil, cl
sub dl, -16
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
add al, -127
xor dil, dl
xor ax, 13332
adc bl, sil
and al, cl
or al, al
xchg bx, ax
cmp dil, 53
and si, -70
and rax, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rax]
cmp bl, 12
test sil, -119
test dl, -81
adc dl, 1
add cl, sil
sub dl, bl
and rsi, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rsi]
add dil, bl
adc dil, dl
test al, 115
add dl, bl
adc bl, 79
and rdi, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rdi]
neg al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
