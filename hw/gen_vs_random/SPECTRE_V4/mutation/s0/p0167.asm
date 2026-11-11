.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], ax
movzx eax, al
cmovs di, di
sub rdx, 22
add dl, -114 # instrumentation
cmovl cx, bx
cmovle di, di
and rcx, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rcx]
or dl, 1 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rdx
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rdi
imul rdi, rsi, 57
cmovns eax, edx
sub cl, cl
and rax, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rax]
test rax, -331426050
adc rax, 1542637830
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], dl
and rdi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rbx]
cmp bl, 13
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rbx]
sbb cl, bl
sbb dl, dl
adc al, 69
add esi, -5
and rax, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rax]
cmovb edi, edx
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rdx
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], 117
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
test eax, 1880179600
and rcx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rcx]
imul cl
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
and rcx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], cl
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rax], bx
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -119
add al, sil
btc ebx, 94
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], dl
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -64
and rdx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
