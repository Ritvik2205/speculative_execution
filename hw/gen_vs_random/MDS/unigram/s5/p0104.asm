.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rsi, 56
and rdi, rdi
cmovnb rcx, rdx
and dil, -103 # instrumentation
cmovns edi, edi
bt ebx, esi
and rax, 498847670
and sil, cl
and rdx, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dil
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
and sil, -108 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rax, -1701787862
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], ebx
or dl, dl
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 7
cmovnb edx, edi
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 4
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dil
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], 82
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
