.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -36 # instrumentation
and rax, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rax]
or sil, cl
and dil, 58
adc cl, -34
sbb dl, sil
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], al
add cl, sil
and rcx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rcx]
test al, -70
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], 122
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
