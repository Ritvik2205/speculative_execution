.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], bl
sbb bl, 79
sub al, -82
sub dl, al
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], dil
and rbx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rbx]
xchg dl, cl
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dl
xor dl, 71
sbb dl, al
jns .bb_0.1
jmp .exit_0
.bb_0.1:
jns .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
