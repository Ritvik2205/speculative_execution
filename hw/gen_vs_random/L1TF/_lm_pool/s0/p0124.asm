.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 93
and rdi, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rdi]
cmp rbx, 77
and rsi, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], 66
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 1266701637
jmp .bb_0.1
.bb_0.1:
lea si, qword ptr [rcx]
and rbx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 53
jmp .bb_0.3
.bb_0.3:
cmovnp rsi, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
