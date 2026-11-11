.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 3
and dl, cl
mov dl, cl
xor sil, dl
test sil, al
or dl, dl
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
and dil, -120
add al, -127
sub bl, cl
sub dl, -16
and rbx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rbx]
and sil, -84
and rdi, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rdi]
sbb sil, cl
cmp bl, -79
cmp al, 114
and dl, -53
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
adc al, 43
test dl, bl
xor cl, 88
test ecx, 860867711
mov si, -8007
mov al, 9
adc bl, dil
and cl, -128
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
