.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 99
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], di
sbb al, -23
and rdi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
mov dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
