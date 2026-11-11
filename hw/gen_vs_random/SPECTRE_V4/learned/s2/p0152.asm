.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, 1001462340
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
and sil, -84
test ebx, 20
add sil, dil
xor al, dl
sbb cx, -114
sub dl, al
test al, -38
adc cl, -86
adc bl, al
xor al, -120
adc cl, dil
test al, 115
inc sil
and rbx, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rbx]
xor cl, bl
sbb cl, 12
mov bl, dl
xor cl, -101
or cl, cl
sub cl, dil
add bl, dl
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], cl
test bl, -29
add ax, 6694
mov dil, al
cmovnb edx, esi
adc bl, -20
cmp al, -122
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
