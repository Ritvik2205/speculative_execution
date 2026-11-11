.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, al
imul si
bt dx, bx
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], edi
mov eax, 522619143
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rcx
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 31
cmp al, -116
btr rcx, rsi
movzx rax, bx
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], cl
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], -10
add bl, 95 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 2
mov edx, eax
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], rdi
bts cx, 158
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 3
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], esi
cmp al, -122
and rcx, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rcx]
test rdi, rax
and al, -118
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
bts rdi, 23
xor bl, 27
and rax, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
movzx esi, byte ptr [r14 + rdi]
add eax, esi
and rcx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dil
imul sil
sub cl, dl
and rax, 0b1111111111111 # instrumentation
imul word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
or dil, 89
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
or edx, 0
add dl, -4 # instrumentation
cmovp ax, cx
cmp bl, -16
and di, cx
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rsi
xchg ecx, edi
xor dl, dl
or rsi, 73
xor si, -73
sub cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
