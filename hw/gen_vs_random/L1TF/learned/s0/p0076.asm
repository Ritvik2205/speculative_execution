.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -57 # instrumentation
cmovo rax, rsi
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], cl
jmp .bb_0.1
.bb_0.1:
cmp al, 27
jmp .bb_0.2
.bb_0.2:
add al, -5 # instrumentation
adc bl, al
jmp .bb_0.3
.bb_0.3:
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dl
setp dil
and bl, cl
adc al, -103
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
