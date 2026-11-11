.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 39
and rcx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
lea eax, qword ptr [rax + rbx]
jmp .bb_0.1
.bb_0.1:
lea cx, qword ptr [rsi]
test rcx, rsi
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 13
jmp .bb_0.4
.bb_0.4:
and rbx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
