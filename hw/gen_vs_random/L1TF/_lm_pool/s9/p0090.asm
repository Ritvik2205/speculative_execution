.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, al
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
and rbx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rbx]
cmovle rdi, rbx
sub al, 9
lea cx, qword ptr [rsi]
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
sub al, -47
jmp .bb_0.1
.bb_0.1:
cmovnp rcx, rdi
and al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
