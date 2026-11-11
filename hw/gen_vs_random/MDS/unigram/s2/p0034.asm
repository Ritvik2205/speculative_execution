.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
not word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btr dword ptr [r14 + rax], ecx
cmovz rax, rdi
and rsi, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], 66
and rax, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rax]
and rdi, 52
bt ebx, 107
and dl, 107 # instrumentation
cmovs edi, ecx
jmp .bb_0.1
.bb_0.1:
or dl, dil
and rsi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rsi]
cmovnb ebx, ebx
and rdi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rdi], edx
and rsi, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rsi]
and bl, 12 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 40
or rax, 1749358813
xor eax, 73
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], 99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
