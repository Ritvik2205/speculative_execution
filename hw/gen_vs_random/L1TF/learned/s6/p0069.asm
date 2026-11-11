.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 21 # instrumentation
adc ax, 23
and rax, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rbx]
lea rsi, qword ptr [rdi]
setns al
and rsi, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rsi]
btr ebx, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
