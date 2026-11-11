.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 7
and rdi, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdi]
xor dil, -37
js .bb_0.1
jmp .exit_0
.bb_0.1:
and dl, -92
cmp eax, -240917296
test al, 34
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], dil
sub cl, -47
cmp dil, -58
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
