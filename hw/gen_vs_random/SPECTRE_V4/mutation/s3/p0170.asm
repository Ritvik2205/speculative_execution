.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 61 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rax], eax
and rcx, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], rdi
test edi, 2142010790
and rsi, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], si
and rcx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rcx]
cmovno rcx, rax
sub rdx, rdx
adc al, dl
cmovle rcx, rdi
and rcx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rcx], esi
test bl, -16
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], dl
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rbx
and rbx, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rdx]
and ax, 62
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rbx
adc rax, 2071185388
and rax, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rax]
sub eax, -672265139
and rdi, 0b1111111111111 # instrumentation
add cx, word ptr [r14 + rdi]
and si, dx
and rsi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rsi], ecx
or rax, -823069511
adc bl, al
not cl
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], -122
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], ebx
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], -59
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], edx
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -1913246407
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], -108
test al, 57
xor bx, -65
movzx rdi, bx
and rdx, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], bl
cmp al, cl
or edx, edi
mov eax, -1056201206
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf edi, edi
and rsi, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rsi]
mov bl, 58
and rdx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdx]
sub ax, 6579
bt eax, 103
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
