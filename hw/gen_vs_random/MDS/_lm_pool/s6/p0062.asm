.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rax
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 99
test dl, -119
and rax, 79
xor sil, 94
and sil, 74
and rax, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rax]
xor dl, 8
and sil, sil
test cl, 73
test al, dil
or rcx, 54
test eax, -675944960
or al, -58
and sil, -56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
