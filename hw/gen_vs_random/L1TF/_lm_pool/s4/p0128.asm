.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, dil
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 0
and rdx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
lea rcx, qword ptr [rbx + rdx + 48]
and rdx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdx]
or sil, sil
adc al, -103
adc sil, 88
xor cx, 113
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
