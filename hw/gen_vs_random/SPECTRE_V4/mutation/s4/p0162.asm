.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc rax, 1873854064
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], 71
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], si
and rdx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rdx]
and ax, 4
and si, dx
and rsi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rsi], ecx
and rdx, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rdx]
sub eax, -529389957
and rcx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rcx], esi
and rsi, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rsi]
mov eax, -1056201206
cmovno rcx, rax
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 94
and rcx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rbx
test edi, -1380439873
cmp al, cl
and rbx, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rbx]
xor bx, -65
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 848492318
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], edx
and rcx, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rcx]
cmovle rcx, rdi
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], 92
adc bl, al
and rax, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rax]
or rax, 980130592
adc al, dl
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf edi, edi
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], ebx
bt eax, 103
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rbx
and rdx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
add cx, word ptr [r14 + rdi]
sub ax, 23
test al, 72
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], rdi
not cl
add dl, 61 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rax], eax
test bl, -91
and rsi, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rsi]
sub rdx, rdx
or edx, edi
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], bl
mov bl, 58
movzx rdi, bx
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
