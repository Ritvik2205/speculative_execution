.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rbx
cmovns dx, ax
movzx rcx, dil
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -25
add rax, rsi
and rsi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rsi], bx
cmp ecx, 97
add dl, -39 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rax]
add al, 123 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rax]
mov dl, -34
and rax, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
mov bl, 7
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], dl
add sil, 26
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], 93
dec eax
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 6
imul rdx, rsi
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rbx
and rdx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], 13
or dl, dl
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], 66
add si, 4
cmp al, cl
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
sbb rax, rdx
add dl, -32 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], 44
and rax, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rax]
or dil, dil
cmp rdi, 24
and rsi, 86
cmovb di, di
test di, cx
and rax, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdx]
cmovle rax, rbx
cmovns si, bx
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], ax
and rdi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdi]
add cl, -37 # instrumentation
adc eax, -39
adc ebx, 117
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
