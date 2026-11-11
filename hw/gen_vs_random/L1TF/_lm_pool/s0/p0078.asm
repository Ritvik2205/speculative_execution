.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx eax, cx
xor dil, -42
cmp rdx, 93
jmp .bb_0.1
.bb_0.1:
test cl, 28
and rdx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rdx]
test dil, -126
and rdx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdx]
lea esi, qword ptr [rbx]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
or al, -48
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
