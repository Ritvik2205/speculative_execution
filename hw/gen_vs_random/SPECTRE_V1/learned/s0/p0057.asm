.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
sbb dl, 127
xor cl, sil
sub dl, al
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and sil, dil
and rbx, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
cmp bl, dil
and rbx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
