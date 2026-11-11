.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr dx, bx
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
xor rax, -1499464454
and rcx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rcx]
test rcx, -613256812
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 2
xor dil, -5
and al, 14
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rcx
and rax, 1250429750
test dil, -51
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
