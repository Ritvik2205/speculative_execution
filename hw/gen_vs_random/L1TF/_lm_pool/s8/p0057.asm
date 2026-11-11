.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -122 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rax]
or bl, -88
jmp .bb_0.1
.bb_0.1:
test al, -56
test dl, -37
and dl, dl
jmp .bb_0.2
.bb_0.2:
sbb bl, dil
or dx, 55
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], bl
jmp .bb_0.3
.bb_0.3:
and ebx, -52
and ax, 37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
