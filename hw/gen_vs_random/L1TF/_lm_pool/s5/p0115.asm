.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, al
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -98
xor cl, al
sub sil, cl
jmp .bb_0.1
.bb_0.1:
and dl, 59 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rbx]
and cl, dl
jmp .bb_0.2
.bb_0.2:
or ax, -18131
xor al, 89
lea rdx, qword ptr [rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
