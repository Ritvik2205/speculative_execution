.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -98 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], di
imul dl
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 100
and rbx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rbx]
add al, 10
and rdi, 0b1111111111111 # instrumentation
adc bx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
adc edx, dword ptr [r14 + rbx]
and sil, 111
sbb ecx, 19
cmp cl, al
and sil, 111
js .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
