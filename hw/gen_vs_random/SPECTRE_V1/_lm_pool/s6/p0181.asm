.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -98 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], bx
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], cl
sbb sil, -78
sbb bl, -41
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
adc dil, 68
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
cmp sil, 25
or cx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
