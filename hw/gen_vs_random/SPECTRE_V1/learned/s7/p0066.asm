.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rdx]
setp bl
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], 67
lea dx, qword ptr [rsi + rdi]
sbb ebx, 70
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], 99
test dil, -116
jmp .bb_0.2
.bb_0.2:
or sil, cl
or edi, 43
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
