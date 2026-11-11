.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 5
and rsi, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rsi]
and bl, dl
and cl, -71
or cx, 0b1000000000000000 # instrumentation
bsf cx, cx
or sil, -78
and rdx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], di
xor dl, -19
cmovnl edi, eax
and rdi, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
or eax, -696456144
btc si, di
and rdx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdx], 51
xor cl, al
or cl, al
or al, -17
btr rax, rcx
and cl, -70 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rcx]
and dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
