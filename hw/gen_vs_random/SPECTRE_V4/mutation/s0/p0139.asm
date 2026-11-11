.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dil
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rcx
xor dl, dl
and rax, 0b1111111111111 # instrumentation
imul word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], esi
bts rdi, 49
and di, cx
imul si
xor bl, -126
cmp al, -44
or rsi, -5
mov edx, eax
and al, -118
and rsi, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 31
btr rcx, rsi
add bl, 95 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
movzx esi, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rcx]
movzx rax, bx
mov eax, 1596316323
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
add dl, -4 # instrumentation
cmovp ax, cx
xor si, -73
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], -19860
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], rax
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], rbx
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dil
or cl, bl
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], rdx
and rdx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rdx], eax
add dl, -120 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], cl
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rcx]
add dl, -79 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rbx]
movsx eax, sil
adc al, -86
and rcx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rcx]
movsx si, bl
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rsi
and rdi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdi], rsi
and rsi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rsi], edx
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], edx
and rax, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rax]
cmp ax, -18179
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
