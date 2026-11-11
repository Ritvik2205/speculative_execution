.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, -2
and rbx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 26
and eax, 33
xor al, 55
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
and al, -55
and rax, 498847670
xor sil, -14
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], -109
and rsi, 13
test esi, 1857129931
jmp .bb_0.1
.bb_0.1:
test edi, -1252846009
cmovnbe rax, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
