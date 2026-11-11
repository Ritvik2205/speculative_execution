.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -32
test cl, 43
and rdx, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rdx]
cmovb ax, dx
sub rax, -1628299544
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 59
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], rbx
or eax, -62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
