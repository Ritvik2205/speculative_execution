.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not di
and rbx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rbx]
cmovs edx, edi
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 26
and cl, dil
test dil, al
xor al, -28
bt ecx, 20
jmp .bb_0.1
.bb_0.1:
bts rbx, 95
or dx, 73
test rsi, 879594088
cmovp esi, esi
xor edx, 7
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 8
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], 73
and rsi, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rsi]
and cl, 48 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 4
or dl, -18
and bl, 100
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
