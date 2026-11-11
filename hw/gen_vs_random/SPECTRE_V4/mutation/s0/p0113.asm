.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
cmovs di, di
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], dl
test rax, -331426050
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], dl
cmp bl, 13
and rcx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rcx]
cmovns eax, edx
movzx eax, al
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -119
cmovle di, di
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rax]
sbb dl, dl
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rdi
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rax], bx
sub cl, cl
adc rax, 1542637830
test eax, -558243208
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -64
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], 117
cmovb edi, edx
adc al, 69
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
btc ebx, 94
and rcx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rcx]
sub rdx, 22
add esi, -5
and rdx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rdx
add al, sil
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
sbb cl, bl
and rax, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rax]
imul cl
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
imul rdi, rsi, 57
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], cl
and rcx, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], ax
or dl, 1 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rdx
add dl, -114 # instrumentation
cmovl cx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
