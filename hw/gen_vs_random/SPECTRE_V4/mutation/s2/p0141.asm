.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, edi
adc rax, 253624080
test edi, -2098143765
adc al, dl
and rsi, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], -59
and rcx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rcx]
test bl, -116
and rdx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rbx
and ax, 13045
and rcx, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rcx]
test al, -26
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], ebx
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], bl
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -1913246407
mov eax, -1056201206
cmp al, cl
sub eax, -90064733
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rbx
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], rdi
and si, dx
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], si
sub rdx, rdx
and rdx, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rbx]
mov bl, 106
or rax, -387680856
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf edi, edi
and rdx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], edx
cmovle rcx, rdi
cmovno rcx, rax
xor bx, 106
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], -108
and rdi, 0b1111111111111 # instrumentation
add cx, word ptr [r14 + rdi]
bt eax, 103
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], dl
and rcx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rcx], esi
sub ax, -1908
and rsi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rsi], ecx
not cl
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], 92
and rax, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rax]
adc bl, al
add dl, 61 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rax], eax
movzx rdi, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
