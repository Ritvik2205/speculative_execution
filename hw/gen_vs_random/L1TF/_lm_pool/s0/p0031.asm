.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec di
cmovno ax, dx
and rbx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
test cl, 61
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
sub al, -47
btc ax, cx
cmovnle rcx, rax
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dil
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], dl
lea rax, qword ptr [rdx + rcx + 64]
and rax, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rax]
bts si, ax
inc esi
lea rcx, qword ptr [rdi + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
