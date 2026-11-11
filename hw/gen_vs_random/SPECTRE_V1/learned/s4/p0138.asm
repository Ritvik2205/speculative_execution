.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], 29
add sil, 2
and rax, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rax]
xor bl, dl
and rbx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rbx]
js .bb_0.1
jmp .exit_0
.bb_0.1:
xchg al, dl
sub dil, -32
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
