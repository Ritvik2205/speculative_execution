.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 63
and al, al
test sil, -96
xor di, 93
test sil, dil
or al, 74
jmp .bb_0.1
.bb_0.1:
and cx, -8
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 4
and rsi, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rsi]
xor bl, sil
or cl, dil
jmp .bb_0.2
.bb_0.2:
xor al, bl
or esi, -110
bt ebx, ecx
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 16
test ecx, -1843375753
and rax, 627810357
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
