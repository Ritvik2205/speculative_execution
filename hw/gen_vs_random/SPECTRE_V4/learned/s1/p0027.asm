.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -92
and rcx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
or dl, 1 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rdx
test eax, -544019457
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
and rdx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdx]
cmovns eax, edx
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
add esi, -5
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], dl
movzx eax, al
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rdx
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], cl
cmovle di, di
and rcx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], 117
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
add al, sil
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -64
and rax, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rcx]
cmovnb esi, eax
test bl, al
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rax], di
and rsi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], edx
add dl, 48 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], sil
cmovb edi, edx
btc ebx, 94
sbb cl, dl
and rdi, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rax], 62
and rcx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rcx]
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rdx, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
not cl
add al, 118
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 125
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], 29359
cmovs di, di
sub rdx, 22
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rdi
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rax], dx
xor al, bl
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 64
add di, -74
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
