.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rdi]
sbb cx, 100
add dl, sil
or bl, 114
and rsi, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
xor bl, sil
cmp cl, -89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
