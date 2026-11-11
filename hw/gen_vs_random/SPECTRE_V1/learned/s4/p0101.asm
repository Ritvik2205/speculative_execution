.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov bl, sil
cmp rax, 900122030
inc rdx
sub bl, sil
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], dil
btr rcx, rbx
sbb dl, al
and cl, dl
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
or ebx, -124
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
