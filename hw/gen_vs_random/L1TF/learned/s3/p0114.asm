.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, 22976
sub dil, -70
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], 103
xor cl, dl
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], si
sub bl, -96
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 1266701637
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rax]
xor dl, bl
or bx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
