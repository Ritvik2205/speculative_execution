.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], 3
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
cmp bl, sil
and rcx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], -1
sub al, sil
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 20
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
