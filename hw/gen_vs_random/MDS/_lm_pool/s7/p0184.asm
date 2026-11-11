.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 5001
test al, bl
xor cl, 98
and di, 91
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 1626470119
btc bx, di
and ax, 27170
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
and rcx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rsi]
and dl, -73
or al, 16
and sil, al
and cl, -71
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rdx]
test edi, -1252846009
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
