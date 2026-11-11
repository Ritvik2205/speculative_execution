.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, dl
and rsi, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rsi]
cmp rax, 16650668
or al, -48
jmp .bb_0.1
.bb_0.1:
test cl, 22
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], ecx
cmovle rdi, rsi
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rdx
sub cx, 100
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
