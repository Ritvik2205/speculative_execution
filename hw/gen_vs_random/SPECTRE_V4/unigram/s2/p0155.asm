.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 32
and rax, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rax], 34
xchg al, al
and rdx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], dil
btr si, 108
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], ax
cmovnbe ebx, esi
or cl, cl
sub rdi, rcx
and rbx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rbx]
xor al, 99
add cl, sil
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
cmovns rdi, rcx
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], -25929
and dil, dil
sbb ecx, 73
and rdx, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rdx]
cmp esi, -84
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], al
and rax, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], bl
add eax, edi
xor dil, 37
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 0
sub cl, sil
cmovb rdx, rdx
mov dl, -124
sub rdx, 50
and dl, 24
movsx cx, sil
bts edi, 87
btc esi, 63
and rbx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 7
xchg si, dx
or rsi, -5
test rsi, rdi
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
sub sil, al
mov eax, ebx
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], rsi
or ebx, eax
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], 118
and rsi, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
