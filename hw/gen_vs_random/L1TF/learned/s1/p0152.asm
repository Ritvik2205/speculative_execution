.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -71 # instrumentation
adc edx, edx
add bl, 68
and rbx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rbx]
xor cl, bl
jmp .bb_0.1
.bb_0.1:
add sil, -5 # instrumentation
adc bl, sil
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], cx
add al, cl
inc eax
and dl, bl
and rcx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rcx]
sbb rdi, 68
mov bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
