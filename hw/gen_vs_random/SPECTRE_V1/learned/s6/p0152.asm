.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -8
mov cl, sil
sbb bl, bl
and rbx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rbx]
mov dl, cl
sub cl, dl
adc cl, -81
add cl, bl
cmp al, dil
and rdi, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
