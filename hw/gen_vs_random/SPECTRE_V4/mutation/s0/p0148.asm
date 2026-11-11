.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], -10
imul si
and rax, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rax]
or dil, -104
and rcx, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], esi
or edx, 0
bts cx, 158
xor bl, 126
and al, 92
and rdi, 0b1111111111111 # instrumentation
movzx esi, byte ptr [r14 + rdi]
add eax, esi
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 2
cmp al, 116
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
movzx rax, bx
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 3
btr rcx, rsi
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], edi
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 31
xor dl, dl
and rax, 0b1111111111111 # instrumentation
imul word ptr [r14 + rax]
sub cl, dl
cmp bl, -79
xor si, -73
sub cl, dil
and rcx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
bt dx, bx
imul sil
mov eax, 1596316323
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rsi
add dl, -4 # instrumentation
cmovp ax, cx
and rsi, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dil
bts rdi, 23
cmp al, 114
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
mov edx, eax
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rcx
add bl, 95 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rcx]
or rsi, 73
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], cl
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], rdi
xchg ecx, edi
test rdi, rax
and dl, al
and di, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
