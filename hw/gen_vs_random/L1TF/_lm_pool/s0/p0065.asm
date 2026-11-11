.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 104 # instrumentation
mov ecx, 90
inc sil
test al, -82
and rsi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rsi]
cmovnp cx, bx
and rcx, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rcx]
and rcx, 100
or dil, -113
xor cl, al
adc bl, al
cmp cl, 57
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
