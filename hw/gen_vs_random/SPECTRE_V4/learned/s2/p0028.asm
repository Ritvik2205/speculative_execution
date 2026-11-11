.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov al, sil
adc dl, dil
add sil, -18
test eax, 1600638830
and sil, dil
sub dl, bl
and rdx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdx]
sub dl, dil
or dl, cl
sbb al, dil
and rdi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rdi]
sbb al, 57
or bl, bl
or ax, 27604
add dil, 105
test dl, cl
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
adc dl, 36
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
or di, 2
cmp al, 115
and bl, al
sbb cl, 35
and rcx, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rcx]
sub al, cl
sbb dl, -71
cmp al, 115
sbb dl, 53
sbb cl, 40
and rdx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdx]
sub dl, -16
sub bl, sil
sbb sil, 24
test eax, 1600638830
xor dil, bl
xor dl, cl
add al, -112
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
