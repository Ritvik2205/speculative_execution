.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 94
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rdi, rbx
and rsi, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rbx]
lea rax, qword ptr [rsi + rcx]
setp dil
or bx, 0b1000000000000000 # instrumentation
bsf cx, bx
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
cmovnl si, si
add al, -112 # instrumentation
and rdx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rsi]
add bl, 76 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdi]
add sil, 113 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rsi]
or rdx, 1 # instrumentation
add al, 122 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rsi]
lea edx, qword ptr [rdi]
adc bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
