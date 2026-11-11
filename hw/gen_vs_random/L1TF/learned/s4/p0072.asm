.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 26813
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 1
cmovb ax, cx
setb dl
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 36
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
