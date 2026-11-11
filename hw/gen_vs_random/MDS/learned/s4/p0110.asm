.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rsi]
test cx, 401
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
jmp .bb_0.1
.bb_0.1:
cmovle cx, si
and rsi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rsi]
or sil, dil
jmp .bb_0.2
.bb_0.2:
or sil, al
or bx, 99
xor al, -89
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
or al, 30
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
