.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rdx]
cmp edi, 82
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rsi]
and cl, 86
adc sil, -77
setb dil
test al, 34
and rbx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rbx]
js .bb_0.2
jmp .exit_0
.bb_0.2:
cmp cl, 88
adc bl, -73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
