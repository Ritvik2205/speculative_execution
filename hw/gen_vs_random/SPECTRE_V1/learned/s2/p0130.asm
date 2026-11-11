.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 2
sbb edi, 20
xchg al, dl
sub al, dil
sbb sil, sil
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
sub sil, -18
xchg rbx, rdx
cmp dil, -58
xor bl, dil
cmp sil, 25
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
