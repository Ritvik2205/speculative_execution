.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -11
cmp edx, -95
cmp al, dil
and al, dl
movzx di, cl
test dl, -81
or cl, 83
add dl, dl
test al, 27
and dl, sil
adc dl, al
test eax, -251558852
and cl, al
add al, cl
inc dl
test edx, 1479885278
mov dl, cl
mov cl, 14
and rcx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rax]
cmp dil, bl
and di, -65
and al, dil
and edi, -102
sub dil, sil
test dl, sil
and al, -12
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
