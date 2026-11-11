.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rax]
xor sil, -126
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 50
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
or al, bl
xor dl, -43
xor al, dil
xor rax, -91
test cl, sil
jmp .bb_0.1
.bb_0.1:
test sil, dl
or sil, bl
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 73
test ax, -11534
xor di, -83
and rbx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
