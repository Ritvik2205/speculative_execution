.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 3
movsx di, al
test ax, -13885
and rax, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], 34
test dil, -116
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
