.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
not sil
test al, sil
test eax, 1729060510
and al, bl
btr ax, si
and rsi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], ecx
bts rsi, rdx
or rsi, 13
or al, 74
and esi, 61
xor al, 9
or cl, 30
xor cx, -18
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
