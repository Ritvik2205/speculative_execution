.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rax
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
test sil, al
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], 31
jmp .bb_0.1
.bb_0.1:
cbw
or bl, -88
and rax, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
