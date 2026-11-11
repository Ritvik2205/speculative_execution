.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rdx]
cwde
and rdx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rdx]
cmp bl, sil
xor bl, 38
and sil, sil
lea cx, qword ptr [rdx]
adc sil, 43
adc al, -61
lea rbx, qword ptr [rsi + rdi + 76]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
