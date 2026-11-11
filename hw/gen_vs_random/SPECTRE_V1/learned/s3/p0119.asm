.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, dil
mov bl, cl
test dl, 113
adc dl, bl
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], dil
movzx edx, bx
sub bl, dl
sbb bl, -41
add al, 18
imul rbx, rax, 65
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
