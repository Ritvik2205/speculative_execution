.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rbx], 24
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], sil
and rsi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rsi]
sub eax, 37
jmp .bb_0.1
.bb_0.1:
adc ebx, 92
bswap eax
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
sbb al, dl
test ax, 636
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
