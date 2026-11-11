.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 27 # instrumentation
mov bl, cl
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
cmovno rax, rbx
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 53
or rbx, 18
xchg rdi, rax
and cl, al
cmp cl, dl
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rcx
jmp .bb_0.3
.bb_0.3:
xor eax, -603819833
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
