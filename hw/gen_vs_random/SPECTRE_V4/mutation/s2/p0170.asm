.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc rax, 519150753
and si, dx
mov eax, 522619143
and rdx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdx]
add dl, 61 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rax], eax
mov bl, 29
adc al, dl
bt eax, 54
test al, -85
sub ax, 6579
adc bl, al
and ax, -603
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -1481110162
sub rdx, rdx
and rcx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rcx], esi
and rbx, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rbx
and rax, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rax]
or edx, edi
test edi, -1380439873
cmp al, cl
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], -59
and rcx, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], -95
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], dl
and rdx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], rdi
and rsi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rsi], ecx
xor bx, -65
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], si
not cl
and rsi, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], -108
and rsi, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
add cx, word ptr [r14 + rdi]
cmovno rcx, rax
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rbx
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], bl
and rcx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rcx]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf edi, edi
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], ebx
movzx rdi, bx
test bl, 78
cmovle rcx, rdi
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], edx
or rax, 185991441
sub eax, -865916088
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
