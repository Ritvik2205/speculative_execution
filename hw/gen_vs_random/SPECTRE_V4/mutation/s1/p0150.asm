.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc rax, 1542637830
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], dl
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
add esi, -5
sbb cl, bl
add dl, -114 # instrumentation
cmovl cx, bx
and rax, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rax], bx
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], 117
and rdx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rbx]
btc ebx, 94
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], ax
imul cl
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], dl
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -119
and rcx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rcx]
cmovb edi, edx
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -64
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rdx
movzx eax, al
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
cmovle di, di
add al, sil
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rdi
and rcx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rdi]
cmovns eax, edx
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rcx, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rcx]
test rax, -344032571
imul rdi, rsi, 57
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], cl
sub cl, cl
sub rdx, 22
adc al, 36
test eax, 1561062795
sbb dl, dl
cmovs di, di
or dl, 1 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rdx
cmp bl, 13
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
