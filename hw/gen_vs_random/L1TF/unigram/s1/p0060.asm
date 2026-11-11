.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], esi
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], edi
cwd
sbb al, sil
and rdx, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rdx]
add rcx, 99
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rcx], 21
cmp eax, edx
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], cl
and rdx, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
cmovo rcx, rax
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 3
xor ecx, edx
adc rbx, 75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
