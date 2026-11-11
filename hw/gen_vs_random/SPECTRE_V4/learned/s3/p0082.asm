.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rcx]
adc cl, al
cmp edx, 4
adc dil, dl
test dl, dil
mov cx, -22668
or bl, al
cmp eax, 512128713
xchg rcx, rax
adc bl, al
adc al, cl
mov dl, -124
or al, -50
mov dil, cl
cmp dl, bl
setb bl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
adc bl, sil
or dl, sil
or sil, -47
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], cl
adc edx, -86
dec bl
test dl, 24
add dil, -61
add al, -4
adc sil, al
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
sub dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
