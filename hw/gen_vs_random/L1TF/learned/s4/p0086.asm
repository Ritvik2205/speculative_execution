.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 93
or ebx, 63
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
sub bl, -96
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], si
xor al, cl
and rcx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 112
jmp .bb_0.2
.bb_0.2:
bt ebx, edi
and dil, 58
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
