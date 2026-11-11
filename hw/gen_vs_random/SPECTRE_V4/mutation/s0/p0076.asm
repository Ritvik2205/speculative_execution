.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 848492318
test edi, -1380439873
not cl
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], ebx
and rbx, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rbx]
and ax, -197
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], si
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], rdi
cmp al, cl
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf edi, edi
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], bl
adc al, dl
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], -95
or edx, edi
xor bx, 106
sub ax, -1393
and rdi, 0b1111111111111 # instrumentation
add cx, word ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rcx], esi
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], -108
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], -59
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], dl
cmovle rcx, rdi
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rbx
and rsi, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rcx]
sub eax, -672265139
test al, 18
bt eax, 103
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], edx
and rcx, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rcx]
mov bl, 29
and rdx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rsi], ecx
and rsi, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rsi]
cmovno rcx, rax
adc rax, -691707152
movzx rdi, bx
and rdx, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rdx]
sub rdx, rdx
or rax, -823069511
adc bl, al
and si, dx
mov eax, 522619143
test bl, -91
and rax, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rbx
add dl, 61 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rax], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
