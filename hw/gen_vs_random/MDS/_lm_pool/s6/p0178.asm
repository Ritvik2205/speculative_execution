.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rsi
xor dl, -59
test dil, bl
or al, dil
jmp .bb_0.1
.bb_0.1:
cmovnp rdx, rbx
or rax, -689609688
or al, 37
and bx, 27
or al, -24
and rax, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rax]
test ebx, -961564216
and al, cl
or bl, dil
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 57
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
