.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -54
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rdi]
xor al, 78
and rcx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rcx]
cmovns rbx, rcx
sbb dil, -93
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rdx]
sbb cl, sil
jmp .bb_0.2
.bb_0.2:
cbw
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
and al, 33
sbb ebx, 64
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
