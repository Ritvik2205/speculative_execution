.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rax]
xor dl, sil
or rsi, 33
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdx
or rax, -1561934807
cmovle di, dx
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
and rax, 498847670
jmp .bb_0.1
.bb_0.1:
xor al, 55
cmovnp rax, rbx
xor di, 93
test bl, -9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
