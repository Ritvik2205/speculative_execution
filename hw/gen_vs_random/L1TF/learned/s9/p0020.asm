.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -57 # instrumentation
and rdx, 0b1111111111111 # instrumentation
movzx rcx, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rdx]
or bl, -88
sub dl, -49
adc bl, dil
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], al
and rax, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rax]
or al, -5
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
lea di, qword ptr [rcx + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
