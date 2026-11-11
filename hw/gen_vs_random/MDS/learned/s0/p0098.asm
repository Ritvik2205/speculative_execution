.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr dx, si
btr eax, edi
and al, -103
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edx
xor dx, 57
and rax, -978188247
xor dl, -19
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
test dil, -51
btr esi, 60
test rcx, -613256812
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
jmp .bb_0.1
.bb_0.1:
test bl, -14
btc ax, bx
and rsi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rsi]
bts rdi, 130
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
