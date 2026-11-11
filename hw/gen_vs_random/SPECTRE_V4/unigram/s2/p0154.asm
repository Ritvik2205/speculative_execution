.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], di
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
sub dl, al
sbb dx, 52
sbb dl, -99
sbb ax, -19255
add al, bl
and rdi, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rbx]
or dx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -29
cmp al, 70
cmovnz edi, edx
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], rdx
and ebx, 78
sbb rsi, -115
and rsi, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rsi]
cmp sil, sil
sub sil, -50
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
cmp di, 100
test rsi, 73
and rdx, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rbx]
test rax, -331426050
and rdx, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rdx]
sub al, 99
cmovnl rdi, rax
cmovle edx, eax
test rdi, -1876639003
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
and rbx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rbx]
cmovnp cx, ax
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdx
add cl, 8 # instrumentation
adc cl, al
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], dl
imul ax, si
cmovnbe ax, dx
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 95
sub ecx, 36
sbb ebx, 100
test bl, dil
not eax
and rbx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btc word ptr [r14 + rbx], bx
and rcx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
