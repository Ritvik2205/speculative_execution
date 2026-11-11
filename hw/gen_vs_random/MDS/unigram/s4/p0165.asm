.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor si, 80
test rbx, 79
cmovl edi, eax
or rax, 1461812833
and cl, -8 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno si, word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], sil
xor ecx, eax
jmp .bb_0.1
.bb_0.1:
bts eax, eax
and rsi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
cmovbe ax, si
xor edi, 4
or edx, -1
and bl, 26 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 1
and rcx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rax
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
