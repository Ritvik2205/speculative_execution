.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rbx]
add dl, -1
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], sil
jmp .bb_0.1
.bb_0.1:
xor dil, bl
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rcx], ecx
and rax, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rax]
jmp .bb_0.3
.bb_0.3:
test esi, 61
xor cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
