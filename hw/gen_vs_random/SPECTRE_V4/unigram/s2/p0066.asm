.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rdi]
add al, al
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
adc al, al
and rdi, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdi]
xor rax, rdi
and cl, -118
and rsi, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 14
and rax, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rax]
imul di, ax
and rax, 0b1111111111111 # instrumentation
movzx ax, byte ptr [r14 + rax]
or sil, cl
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], cl
test dil, dil
mul rcx
and rax, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rax]
adc bl, -20
and rcx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rsi
xor cl, cl
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], 36
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
xor al, sil
mov cl, sil
sub rbx, 101
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], rbx
cmp cl, dl
cmovnb ecx, eax
xor dl, cl
and rax, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rax]
not edi
and rdx, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rdx]
or dil, -104
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 4
cmp dl, 23
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], -97
movsx si, bl
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr edx, edi
cmp ecx, 23
or sil, sil
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rax], di
sub dil, dl
sub edi, 88
and rsi, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rsi], 60
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
