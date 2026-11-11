.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, -47
inc edi
movsx ecx, dx
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], 24
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], -60
add sil, 54 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], eax
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rdx]
and cl, cl
cmovo edx, eax
and dx, -107
and rsi, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rsi]
bswap edx
and rax, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rdx
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rsi
or ebx, -78
cmovl edx, ecx
and rdi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rdi]
imul eax, esi
adc al, 43
and rdx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdx], edx
and rbx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rbx]
sub edx, ecx
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr edi, eax
add dil, -61
adc al, -86
and rdi, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
adc rsi, qword ptr [r14 + rcx]
or dil, dil
movzx ebx, dil
sbb sil, al
and rbx, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rbx
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdx], edx
and rdx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rdx]
add al, 20 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 65
adc dil, al
and cl, 126
and rbx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], al
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 7
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 5
and rdx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
