.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdx]
cmp sil, al
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
inc eax
and rbx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rbx]
sub rax, 1715032616
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], al
xchg rbx, rdx
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
cmp dl, al
and rbx, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
