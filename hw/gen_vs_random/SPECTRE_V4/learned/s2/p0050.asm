.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rsi, qword ptr [r14 + rcx]
test dl, -102
or rdi, 43
and ebx, -122
dec bl
cmp al, -122
xchg ebx, ecx
adc bl, 35
mov bl, cl
and rsi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rsi]
test ecx, 860867711
xor al, -66
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
