.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx bx, sil
mov esi, ecx
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 48
sub al, 11
sub eax, -1627558845
cmovp ecx, edx
test bx, si
add rdi, rsi
and rax, 0b1111111111111 # instrumentation
movzx rsi, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], eax
and rsi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rsi], rbx
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], 61
mov cl, bl
cmp cl, cl
test dl, sil
and rdi, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rbx]
cmovp cx, cx
imul edx, ecx
xchg al, al
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
adc al, sil
cmovp eax, ecx
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], 24
and dl, bl
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], ebx
and rsi, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rsi]
xor cl, al
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], sil
or bl, dil
and dil, bl
or cl, 83
dec eax
and rax, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rsi]
mov rbx, 41
add cl, -62
cmp cl, al
imul eax
and rsi, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], -125
or dil, 1 # instrumentation
mov ax, 1 # instrumentation
div dil
and rdx, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
