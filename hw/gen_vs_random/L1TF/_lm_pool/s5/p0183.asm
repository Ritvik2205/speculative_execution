.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], -1
sub cl, -49
jb .bb_0.1
jmp .bb_0.2
.bb_0.1:
sbb bl, cl
jnz .bb_0.2
jmp .exit_0
.bb_0.2:
cmovle rax, rdi
sbb dl, dil
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rcx]
lea rcx, qword ptr [rdx + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
