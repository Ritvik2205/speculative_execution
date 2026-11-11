.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb cl, bl
sbb dl, dl
add esi, -5
cmovb edi, edx
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], 117
add al, sil
imul rdi, rsi, 57
test eax, 1880179600
btc ebx, 94
and rax, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rax]
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
test rax, -331426050
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], dl
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rdi
movzx eax, al
imul cl
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -119
cmovs di, di
adc rax, 1542637830
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rbx]
adc al, 36
and rcx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rcx]
sub rdx, 22
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rdi]
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], dl
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], ax
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], cl
or dl, 1 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rdx
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rdx
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -64
sub cl, cl
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rax], bx
cmovns eax, edx
add dl, -114 # instrumentation
cmovl cx, bx
cmovle di, di
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rcx]
cmp bl, 13
and rcx, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
