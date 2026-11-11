.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], si
mov bl, 106
or edx, edi
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -1481110162
and rcx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rcx], esi
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], 92
sub ax, 25338
and rdi, 0b1111111111111 # instrumentation
add cx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], ebx
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rbx
xor bx, 59
and rdx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rsi], ecx
sub rdx, rdx
adc al, dl
movzx rdi, bx
and rcx, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], dl
not cl
and rsi, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], bl
and rax, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rax]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf edi, edi
and ax, -603
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], edx
and rdx, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rdx]
test al, 52
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 94
cmovno rcx, rax
mov eax, -1056201206
cmovle rcx, rdi
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rbx
adc bl, al
and rcx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rcx]
test edi, 2142010790
test bl, -29
cmp al, cl
add dl, 61 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rax], eax
bt eax, 103
sub eax, -638345541
and rdx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdx]
and si, dx
and rsi, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], rdi
adc rax, 1682231791
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], 71
or rax, -823069511
and rbx, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
