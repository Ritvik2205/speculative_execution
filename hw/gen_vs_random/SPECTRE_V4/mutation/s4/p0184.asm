.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts cx, 135
and rax, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rax]
and dl, al
or dil, 5
and rsi, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rcx]
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
sub cl, dl
or edx, 0
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], esi
bts rdi, 49
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], edi
cmp al, 109
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 6
add eax, esi
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 31
mov eax, 522619143
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], cl
xor bl, 27
cmp bl, -79
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rcx
cmp al, -78
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
and rax, 0b1111111111111 # instrumentation
imul word ptr [r14 + rax]
add bl, 95 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rcx]
and di, cx
and al, 49
btr rcx, rsi
xor si, -73
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 2
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 3
mov edx, eax
and rdi, 0b1111111111111 # instrumentation
movzx esi, byte ptr [r14 + rdi]
or rsi, -5
add dl, -4 # instrumentation
cmovp ax, cx
bt dx, bx
and rcx, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rcx]
sub cl, dil
test rdi, rax
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dil
movzx rax, bx
imul sil
xor dl, dl
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], rdi
xchg ecx, edi
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rsi
imul si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
