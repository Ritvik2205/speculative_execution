.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdx]
xor al, 99
test bl, dil
test al, dil
xor sil, 27
jmp .bb_0.1
.bb_0.1:
or al, 30
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
bts ebx, 205
or dl, sil
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -337720409
test rcx, -613256812
and esi, 34
or al, -22
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
