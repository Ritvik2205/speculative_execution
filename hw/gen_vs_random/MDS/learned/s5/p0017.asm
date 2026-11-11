.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rdx]
or al, 74
and rax, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rax]
xor al, dil
and rsi, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
xor ax, -1005
xor dl, 8
and sil, 74
test cl, -18
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
xor al, 115
or al, bl
bt ax, cx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 53
or al, bl
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -337720409
and al, -114
xor sil, -15
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
