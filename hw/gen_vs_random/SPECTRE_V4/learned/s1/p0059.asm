.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rdx]
sub ax, bx
sub cl, dl
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
adc cl, bl
and sil, sil
inc al
xor cl, bl
test cl, -31
and rcx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rcx]
sbb al, cl
cmp sil, 127
or rax, 980130592
or cl, 83
or sil, bl
cmp dl, al
adc al, -86
mov ax, 31802
sbb dil, bl
add bl, dil
adc dil, -15
and rsi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rsi]
mov bl, sil
add bl, 54
adc cl, -54
inc sil
adc cl, dil
test dl, 114
test rax, -813666773
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
