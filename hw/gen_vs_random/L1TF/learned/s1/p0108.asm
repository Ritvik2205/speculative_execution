.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, -67
sbb rdi, 12
jmp .bb_0.1
.bb_0.1:
sub al, -75
test rbx, 2
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 58
xor cl, al
jmp .bb_0.2
.bb_0.2:
lea rdx, qword ptr [rcx + rax]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
xor al, cl
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
