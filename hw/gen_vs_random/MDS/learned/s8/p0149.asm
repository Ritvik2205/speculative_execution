.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, ecx
not cl
test al, 91
xor bl, -61
xor cl, 24
or rax, -689609688
and rdi, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rdi]
and cl, -71
test dl, 9
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1803433227
or al, -61
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rdi
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -3918
or al, -22
and cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
