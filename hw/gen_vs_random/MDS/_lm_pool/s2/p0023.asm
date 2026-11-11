.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 74
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
test esi, 425331143
test dil, -80
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
and rdi, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdi]
test eax, -1634766116
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
and rsi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rsi]
test al, dl
and al, dil
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
