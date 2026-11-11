.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, cl
add cl, -127
mov bl, sil
adc bl, dil
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], al
jmp .bb_0.1
.bb_0.1:
test dil, -116
cmp al, 23
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
