.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test esi, 89
and rax, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], ebx
and rsi, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rsi]
and dil, 122 # instrumentation
cmovnbe edi, eax
and dl, -73 # instrumentation
cmovns rax, rdx
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], 98
and cl, dil
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dl
and rcx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rcx]
or dl, -115
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 62
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr edx, edi
or esi, eax
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 0
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], ax
and cl, 85 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rsi]
and bl, dl
and rcx, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
