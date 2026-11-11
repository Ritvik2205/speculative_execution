.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, 127
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 7
or bl, bl
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], -128
jmp .bb_0.1
.bb_0.1:
cbw
sbb eax, -403815802
setb dl
xor dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
