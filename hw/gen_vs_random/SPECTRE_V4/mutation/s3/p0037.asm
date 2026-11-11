.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rax, 185991441
and ax, 26513
and rsi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rsi], ecx
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], ebx
adc al, dl
and rdx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdx]
or edx, edi
and si, dx
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 848492318
cmovle rcx, rdi
and rdx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rdx]
bt eax, 54
mov eax, 1596316323
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rbx
test al, 57
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rbx
sub eax, -1804712207
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], dl
and rcx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rcx], esi
cmp al, cl
cmovno rcx, rax
test bl, -29
and rax, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rcx]
adc bl, al
and rdx, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rdx]
adc rax, -827748523
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], -108
and rcx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rcx]
movzx rdi, bx
and rsi, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rsi]
sub rdx, rdx
and rdi, 0b1111111111111 # instrumentation
add cx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], si
and rsi, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], rdi
test edi, -1380439873
xor bx, 59
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], 71
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], bl
not cl
add dl, 61 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rax], eax
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], 92
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], edx
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf edi, edi
mov bl, -69
sub ax, 25338
and rbx, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
