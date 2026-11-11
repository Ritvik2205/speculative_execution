.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -19
and rdx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rdx]
add al, -44
dec bl
or dil, cl
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
dec bl
cmp bx, 113
and cl, al
and dl, bl
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
sub dl, bl
sbb bl, -98
or ax, 48
adc dil, cl
mov bl, al
cmp sil, dl
and rdi, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rdi]
or bl, bl
sub al, 0
adc al, dil
adc al, dl
adc dil, 112
and dl, -53
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
sub rsi, -89
and bl, -119
test al, 27
or al, -88
sub cl, -51
sbb bl, dl
add bl, cl
xor dl, -123
and dl, -53
test al, 27
adc cl, -86
xor eax, 1760581269
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
