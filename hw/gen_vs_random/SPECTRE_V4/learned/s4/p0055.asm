.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 27 # instrumentation
mov al, dil
adc sil, -63
sub cx, -114
add dx, 97
or sil, bl
and al, dl
adc edx, -125
adc dl, dil
and dl, al
test bl, 110
mov bl, al
cmp al, -106
cmp sil, 113
add bl, al
xchg rax, rdi
cmp sil, dil
sub rcx, 126
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
