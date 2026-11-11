.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rdx]
xor al, -74
and rdx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
jmp .bb_0.1
.bb_0.1:
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
js .bb_0.3
jmp .bb_0.4
.bb_0.3:
test sil, 13
test sil, 47
jmp .bb_0.4
.bb_0.4:
sbb esi, 50
and rcx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rcx]
sub al, bl
sbb ecx, 41
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
