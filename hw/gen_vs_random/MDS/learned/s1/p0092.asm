.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
and cl, sil
and bl, dil
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
test sil, 41
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1803433227
and rdi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -28205
jmp .bb_0.1
.bb_0.1:
or rax, 1461812833
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
or rsi, 16
jmp .bb_0.2
.bb_0.2:
or rdi, 21
btc si, 43
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
