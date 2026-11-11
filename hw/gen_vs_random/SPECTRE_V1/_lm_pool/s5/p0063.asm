.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, dil
lea rsi, qword ptr [rdx + rax + 28]
and rax, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dil
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub cl, -47
and cl, -57
jle .bb_0.2
jmp .exit_0
.bb_0.2:
lea ax, qword ptr [rdx]
sbb bl, al
sbb al, sil
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
