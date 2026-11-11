.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -7
or al, cl
xor ax, -1005
and rbx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], -57
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
and dl, al
jmp .bb_0.1
.bb_0.1:
or sil, al
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
and dil, 125
xor al, -19
or rbx, -77
xor dil, -70
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
and sil, -9
or al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
