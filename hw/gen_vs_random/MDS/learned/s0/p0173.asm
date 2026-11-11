.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, 16
not al
test al, cl
and rax, -2039117613
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 3
and sil, 89
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
and rcx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rcx]
xor bl, sil
or edx, -78
test al, dl
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], edi
and rdx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rdx]
xor sil, -46
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
