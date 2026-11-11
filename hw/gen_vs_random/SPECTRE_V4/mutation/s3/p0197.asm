.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts cx, 158
add dl, -4 # instrumentation
cmovp ax, cx
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 2
and rdi, 0b1111111111111 # instrumentation
movzx esi, byte ptr [r14 + rdi]
xor dl, dl
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], cl
bt dx, bx
bts rdi, 144
imul si
test rdi, rax
xor si, -73
mov edx, eax
and rcx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], -10
xor bl, 126
and dl, al
or edx, 0
and di, cx
cmp al, 109
movzx rax, bx
add bl, 95 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rcx]
xchg ecx, edi
or dil, 5
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
imul sil
add eax, esi
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rcx
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dil
and rax, 0b1111111111111 # instrumentation
imul word ptr [r14 + rax]
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 3
and al, 85
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 31
sub cl, dil
or rsi, 73
cmp bl, 12
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], edi
cmp al, -44
and rcx, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], esi
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
btr rcx, rsi
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], rdi
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rsi
mov eax, 1596316323
sub cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
