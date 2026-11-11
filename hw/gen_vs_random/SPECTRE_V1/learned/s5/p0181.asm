.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 12 # instrumentation
cmovnb eax, edi
and rsi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
sub rdi, 14
xor sil, -33
or cl, -62
cmp rcx, 46
and sil, 52
sub sil, bl
and cl, cl
not eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
