.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -116
cmp al, cl
cmp dil, cl
sub al, dil
and cl, dl
xchg al, cl
adc al, -82
jmp .bb_0.1
.bb_0.1:
xchg rdx, rsi
sub sil, cl
cmovle rdi, rcx
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 85
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
