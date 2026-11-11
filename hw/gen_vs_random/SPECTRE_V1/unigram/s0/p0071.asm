.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, -124
mul al
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], dil
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 90
test sil, al
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], edx
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
add esi, dword ptr [r14 + rdx]
xor edx, eax
and rbx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], ax
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], -26
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 68
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 73
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], ecx
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], 46
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
