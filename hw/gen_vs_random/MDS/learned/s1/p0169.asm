.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rdx]
and bx, 61
test esi, 425331143
or dil, -78
or al, dl
and bx, 24
and cl, sil
jmp .bb_0.1
.bb_0.1:
or bl, cl
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 6
or cl, dl
xor rax, -843636050
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 99
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], sil
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
test ebx, -961564216
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
