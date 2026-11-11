.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, bl
and rax, 1994547909
add al, sil
jmp .bb_0.1
.bb_0.1:
xchg rcx, rax
and bl, sil
and rsi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rbx]
sbb sil, cl
jmp .bb_0.3
.bb_0.3:
test edi, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
