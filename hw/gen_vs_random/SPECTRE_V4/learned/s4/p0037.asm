.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 33
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
add cl, -62
cmp al, -53
neg al
sub dl, sil
test sil, -119
add dl, bl
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
test dil, -26
sbb dl, dil
or edx, -128
and rax, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rax]
add dil, al
cmp dil, -29
adc sil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
