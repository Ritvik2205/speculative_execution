.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, dil
add sil, dl
xchg cl, cl
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
xchg ebx, edx
adc cx, -30
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
