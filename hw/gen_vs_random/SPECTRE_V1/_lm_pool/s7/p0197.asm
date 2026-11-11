.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 3
cmovle si, bx
sub al, dl
adc cx, -30
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], sil
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], -63
jmp .bb_0.1
.bb_0.1:
sbb al, 33
and bl, al
xor dl, 71
xor dl, 71
sub al, dl
jns .bb_0.2
jmp .exit_0
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
