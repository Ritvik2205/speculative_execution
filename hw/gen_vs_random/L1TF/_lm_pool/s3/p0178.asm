.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, dl
or sil, -44
setb dl
add cl, -36
and rcx, 94
and ax, 37
and rcx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
