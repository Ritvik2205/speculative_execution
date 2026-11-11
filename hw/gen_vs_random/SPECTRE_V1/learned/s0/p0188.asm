.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rax]
test al, 84
add cl, -127
and rax, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rdx]
sub cl, sil
and al, 33
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
sbb bl, sil
sbb cl, dl
xchg ebx, ecx
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
