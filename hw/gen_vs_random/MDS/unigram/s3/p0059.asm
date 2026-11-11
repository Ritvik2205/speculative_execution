.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdx]
xor cl, dl
and rdx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 80
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], ebx
and rsi, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rdi]
and edi, 23
and rdi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rdx]
btr rbx, 155
and rdi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdi], 92
test cl, cl
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr edi, dword ptr [r14 + rdx]
btc rax, rax
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], -27
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
