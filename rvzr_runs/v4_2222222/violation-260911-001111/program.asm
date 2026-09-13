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
cmp al, -53 
or rsi, 73 
mov edx, eax 
and al, 41 
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
mov eax, -1056201206 
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al 
add dl, -4 # instrumentation
cmovp ax, cx 
xor si, -73 
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl 
or dil, -16 
sub cl, dl 
bt dx, bx 
and dl, al 
cmp al, -78 
bts cx, 158 
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], -10 
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], cl 
sub cl, dil 
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 3 
and rax, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rax] 
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], edi 
xchg ecx, edi 
imul sil 
add eax, esi 
and rcx, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rcx] 
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], rdi 
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rsi 
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl 
test rdi, rax 
cmp bl, 12 
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 2 
or edx, 0 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
