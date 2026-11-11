.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov dil, bl
mov dil, cl
test bl, dl
mov al, dl
sub cl, dl
and al, cl
test esi, -2111618709
and rcx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rcx]
adc bl, 127
add rcx, -61
test rax, -405021090
or dl, al
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 1
and cl, 126
add dl, bl
and al, 59
or cl, al
adc al, sil
test dl, -102
and rdi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], sil
sub dl, al
and dl, -53
add dil, sil
movzx edx, bl
mov cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
