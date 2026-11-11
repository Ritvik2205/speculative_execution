.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
add al, -29
mov dl, sil
test dl, -125
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], sil
and rcx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
or edx, -118
sub rcx, -99
cmp eax, -813838876
adc sil, cl
adc sil, dl
sub bl, dil
xor ax, -29507
sub cl, dl
add al, -127
and al, 100
cmp cl, -105
dec bl
cmp dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
