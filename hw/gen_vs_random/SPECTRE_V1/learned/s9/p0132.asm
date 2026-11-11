.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], -126
and rax, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdx]
inc bl
and al, -23
and al, bl
and rcx, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rcx]
xor rax, 29
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], bl
cmovnbe rdi, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
