.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt eax, 103
and si, dx
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -1913246407
and rsi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rsi], ecx
sub ax, -1908
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], 71
sub rdx, rdx
mov eax, 522619143
and rdx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rcx], esi
adc al, dl
or edx, edi
or rax, -387680856
adc bl, al
test al, 114
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], bl
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], rdi
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rbx
xor bx, 106
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rbx
and rbx, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rbx]
movzx rdi, bx
and rdx, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rdx]
sub eax, -90064733
cmp al, cl
cmovle rcx, rdi
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], edx
test bl, 87
and rdi, 0b1111111111111 # instrumentation
add cx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rsi]
mov bl, 106
and rax, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rax]
not cl
and rcx, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], dl
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], -95
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], ebx
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 94
adc rax, 310915511
and rsi, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdx]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf edi, edi
add dl, 61 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rax], eax
and rcx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rcx]
and ax, -4731
cmovno rcx, rax
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], si
test edi, -2098143765
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
