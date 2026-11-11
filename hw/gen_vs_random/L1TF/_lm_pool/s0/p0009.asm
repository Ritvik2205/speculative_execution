.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rcx]
lea edi, qword ptr [rcx + rcx + 59]
or cl, 105
jmp .bb_0.1
.bb_0.1:
xor sil, 64
or cl, 105
jmp .bb_0.2
.bb_0.2:
sbb sil, dl
and bl, 89
jmp .bb_0.3
.bb_0.3:
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], 16
jmp .bb_0.4
.bb_0.4:
and rsi, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rsi], 81
and rdx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
