.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test ecx, -1843375753
and cl, -40 # instrumentation
cmovp ecx, ecx
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], al
or dl, 51
and rax, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], eax
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], cl
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 39
not dl
and rcx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], si
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 5
or sil, cl
and rsi, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rsi]
cmovs edx, eax
or sil, -78
cmovbe rdi, rdx
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 30
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
