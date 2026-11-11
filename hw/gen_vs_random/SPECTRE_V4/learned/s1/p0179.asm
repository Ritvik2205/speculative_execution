.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
dec al
sub al, 26
xor al, 99
cmp rax, 2096656187
test dl, 24
test al, 115
add sil, cl
adc sil, dil
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
adc cl, -4
inc bl
test sil, bl
or bl, sil
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, edx
xor bx, 59
sub al, sil
and dl, sil
xor cl, 88
add cl, dl
or al, al
sbb ax, -30070
test edx, 1479885278
inc al
add cl, dil
cmp al, 115
sub dil, -28
sub eax, -529389957
cmp al, 98
or bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
