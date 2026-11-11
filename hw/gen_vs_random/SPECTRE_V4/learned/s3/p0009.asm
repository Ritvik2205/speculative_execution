.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -58
test cl, -10
add al, -55
sbb al, 31
or cx, 59
dec al
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 42
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rcx]
mov al, -93
adc cl, -66
mov bl, 29
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx]
sub al, dil
mov dl, 81
mov dil, cl
neg rbx
sbb dl, dil
or dl, dil
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
cmovb ax, dx
sub dil, -40
adc al, -59
and al, dl
sub dil, cl
adc dl, 63
add bl, bl
cmp dil, -29
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
test cl, 78
add bl, -59
xor rbx, -99
and al, 49
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
