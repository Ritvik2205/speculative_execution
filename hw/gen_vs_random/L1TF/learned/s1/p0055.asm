.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, bl
and rdi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
xor al, 38
and eax, -409673666
and rcx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
test al, -56
or al, -48
or sil, cl
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 21
xor ax, 22976
test rdi, 41
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
