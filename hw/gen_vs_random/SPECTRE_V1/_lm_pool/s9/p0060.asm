.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, 97
inc al
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], -36
test al, 42
and cl, -57
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
cmp cl, dil
and rsi, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
add dil, 44 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rdi]
cmovs bx, dx
sub al, sil
sbb edi, 77
and rax, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rax]
test dil, -116
or al, 19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
