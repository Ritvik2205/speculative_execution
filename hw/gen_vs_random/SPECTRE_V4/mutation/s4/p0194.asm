.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], 117
cmovns eax, edx
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rax], bx
and rcx, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rcx]
adc rax, 1542637830
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rax, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], ax
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], cl
cmovs di, di
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
and rdx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rdi]
cmovb edi, edx
movzx eax, al
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
add al, sil
cmp bl, 13
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rbx]
btc ebx, 94
test eax, 1561062795
or dl, 1 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rdx
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
test rax, -331426050
adc al, 36
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
sub cl, cl
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], dl
and rcx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rdx
and rbx, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
and rcx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rcx]
imul cl
sub rdx, 22
cmovle di, di
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
imul rdi, rsi, 57
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rdi
add esi, -5
add dl, -114 # instrumentation
cmovl cx, bx
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -119
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -64
sbb dl, dl
and rax, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rax]
sbb cl, bl
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
