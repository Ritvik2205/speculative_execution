.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
test bl, 12
and al, -68
cmovnp di, cx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rax]
or rsi, 38
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rax]
and sil, -90
jmp .bb_0.3
.bb_0.3:
test ecx, 17
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 24
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
