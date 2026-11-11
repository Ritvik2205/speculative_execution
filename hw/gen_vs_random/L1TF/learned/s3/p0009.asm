.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rax]
sub rdi, 35
jmp .bb_0.1
.bb_0.1:
inc rdx
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and dl, al
xor al, 89
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and rcx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rax]
xor al, 38
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
