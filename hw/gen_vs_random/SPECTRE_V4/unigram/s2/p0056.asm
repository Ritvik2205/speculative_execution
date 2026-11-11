.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp cx, bx
add rsi, rdi
and rax, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rax]
movzx edx, bl
cmp al, -52
cmovle eax, esi
cmovb rax, rdi
and rcx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rcx]
cmovno esi, edx
adc al, 69
add dl, 48 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], dl
sub ecx, 39
cmp cl, 59
adc di, -110
and rbx, 0b1111111111111 # instrumentation
cmp ecx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], bl
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rax], edi
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], -31428
mul dl
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], dl
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 4
cmovns rcx, rdx
cmovs ecx, ebx
and rax, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rax]
cmovns bx, ax
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], ax
add dl, 31 # instrumentation
cmovnl bx, bx
and rax, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rax]
cmovle rdi, rcx
adc bl, dl
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 23
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 1 # instrumentation
add dil, 97 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], 29
and bl, dil
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
cmp dil, -124
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
adc si, 6
test sil, sil
imul rsi
and rbx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], 80
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
test ax, cx
and rcx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rcx]
cmovo ebx, ecx
cmovs rcx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
