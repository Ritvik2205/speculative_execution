.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, 32760
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 0
test ax, 636
btc ax, dx
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdx]
jmp .bb_0.3
.bb_0.3:
add sil, -61
and rsi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rsi]
test cl, 53
xchg edx, eax
cmp bl, 123
or rdx, 11
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
