.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rax]
and bl, -60
and rdi, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], cl
add al, 27 # instrumentation
mov al, dl
and rcx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rcx]
cmp bl, cl
and edi, -102
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], esi
or ax, cx
adc al, cl
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], -8
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], -108
and rax, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rax]
neg rax
sub rcx, -99
add edx, 89
mul si
and rcx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], ebx
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], ax
and rcx, 0b1111111111111 # instrumentation
movsx ecx, byte ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], -30
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 0
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], dx
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], al
cmovnle cx, si
cmp bl, dil
add cl, 58 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rcx]
cmovnp rsi, rdi
mov bl, 106
movsx edx, dil
not rdi
adc bl, cl
imul si, cx
cmovbe rcx, rsi
and rbx, 12
and rcx, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rcx]
add cl, 111 # instrumentation
cmovnle dx, cx
and rax, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rax]
and si, si
sbb ax, 75
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 1 # instrumentation
add sil, -32 # instrumentation
cmovp rsi, rax
cmovnp rdx, rsi
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], rbx
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], di
and cx, -117
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
