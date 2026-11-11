.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -80 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 4
or cl, bl
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 44
lea rdx, qword ptr [rdi + rsi]
cmp al, -119
lea edx, qword ptr [rax]
jmp .bb_0.1
.bb_0.1:
test cl, 72
setb al
add si, -5
and rax, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
