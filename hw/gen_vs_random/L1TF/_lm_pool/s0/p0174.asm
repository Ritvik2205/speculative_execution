.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, cl
sub al, -3
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], -7
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], edi
jnz .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rbx]
jmp .bb_0.3
.bb_0.3:
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edx
and dx, 86
cmp cl, -89
sbb bl, dl
lea si, qword ptr [rdx + rbx]
lea rdx, qword ptr [rax + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
