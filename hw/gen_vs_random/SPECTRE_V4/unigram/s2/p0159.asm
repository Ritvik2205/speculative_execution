.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb sil, -11
and rax, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rax]
and cl, -101
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], si
or cl, dil
and rax, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rdi
cmovnz cx, si
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], -19
imul si, si
test ebx, 80
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, edx
sbb ecx, eax
btc ecx, eax
and rdi, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rdi]
add dl, cl
and rdx, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rdx]
cmovp rax, rbx
adc al, 116
bts edi, ecx
and rbx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rbx], 86
mov rax, rbx
and cx, -117
and rbx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], di
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], di
and rbx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rbx]
cmovl ax, si
and rsi, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rsi]
mov rbx, 37
or al, al
and rax, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rsi]
movzx di, dil
and rsi, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rsi]
adc dil, 124
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], -103
cmovp esi, ecx
cmovnp esi, esi
mov al, al
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], al
and rcx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdx], esi
movsx edx, dx
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], al
and rbx, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], rsi
and al, 92
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
