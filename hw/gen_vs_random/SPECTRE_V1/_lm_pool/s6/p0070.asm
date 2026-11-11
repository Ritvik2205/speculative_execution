.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 67 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rbx]
xchg ecx, ebx
add bl, 70
jno .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub al, sil
jno .bb_0.2
jmp .exit_0
.bb_0.2:
test dil, -116
and sil, 111
add edi, -91
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
xor cl, sil
sbb dl, sil
sbb dl, 127
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
