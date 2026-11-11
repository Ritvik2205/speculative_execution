.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs di, cx
lea rdi, qword ptr [rcx + rbx]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], -28668
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], rbx
test al, 15
and rcx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rcx]
test al, -84
jmp .bb_0.3
.bb_0.3:
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], 86
and rdi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
