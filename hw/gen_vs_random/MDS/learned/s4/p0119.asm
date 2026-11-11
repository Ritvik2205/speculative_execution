.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], cl
xor dl, 40
and rax, 79
and al, sil
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], edi
test al, 127
or al, 30
xor al, 99
test dil, al
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
and rdx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdx]
xor al, 99
btc rcx, 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
