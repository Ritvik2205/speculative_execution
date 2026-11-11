.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc bl
xor sil, sil
jno .bb_0.1
jmp .exit_0
.bb_0.1:
lea ecx, qword ptr [rax + rax + 99]
lea cx, qword ptr [rdx]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], bl
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
sub sil, -18
and rbx, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rbx]
lea rax, qword ptr [rbx]
and rax, 1713273566
sbb cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
