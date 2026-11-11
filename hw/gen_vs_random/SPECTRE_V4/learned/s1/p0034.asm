.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 2
or bl, 80
or eax, -646827727
cmp rcx, -121
adc dil, cl
adc dil, -15
cmp al, 105
add al, -44
sub bl, al
and rdx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdx]
xor dil, bl
or dil, -16
xor bl, -126
adc bl, cl
add dil, dl
and sil, cl
not dil
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], sil
cmp al, -116
mov bl, 106
sub bl, -89
xor sil, dl
and al, 92
and rcx, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rcx]
add bl, -59
xor cl, -73
and sil, -84
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
sub bl, cl
sbb eax, -747044528
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
