.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdi]
or dl, cl
add dl, al
lea ecx, qword ptr [rbx]
cmp sil, cl
sbb dil, bl
and rdi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdi]
test cl, -120
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
