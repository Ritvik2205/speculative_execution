.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, -75
xchg rsi, rdx
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
or dil, al
and rdx, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rdx]
test al, -71
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], bl
jp .bb_0.2
jmp .exit_0
.bb_0.2:
sbb dil, sil
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], dl
sbb eax, -108
jle .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
