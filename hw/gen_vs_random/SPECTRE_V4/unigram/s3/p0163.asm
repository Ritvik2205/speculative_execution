.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 54
and rax, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rax], rdi
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], 39
and rdi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdi], 34
adc dil, -15
mov cl, dl
sub bx, 24
and rax, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rax]
bts cx, 158
and rbx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rbx], eax
or ax, 0b1000000000000000 # instrumentation
bsr cx, ax
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 90
sbb dl, cl
xor rcx, rax
and rbx, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rbx]
mov esi, edi
and rsi, 0b1111111111111 # instrumentation
movzx rax, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rax]
cmovno rax, rcx
and cl, -118
sub al, bl
btr edx, 160
and rsi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], si
cmovle ax, dx
and rbx, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rbx]
cmovnbe eax, edx
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], si
and rax, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rax]
cmp sil, cl
and rdx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], cx
and rdi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], -117
cmovo di, di
xchg dil, dil
and eax, edx
cmovle rcx, rdi
and rcx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rcx]
dec dil
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], esi
and rsi, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rsi]
add al, 27 # instrumentation
mov dl, sil
test dl, sil
mov dil, dil
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], 50
xchg rdx, rbx
and rcx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rcx]
or bx, -33
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
