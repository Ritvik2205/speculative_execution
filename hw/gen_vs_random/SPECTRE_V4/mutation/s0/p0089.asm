.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -119
and rax, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rax], bx
cmovs di, di
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rdx
and rbx, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rbx]
sub cl, cl
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], ax
and rax, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], dl
cmp bl, 13
movzx eax, al
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
test rax, -344032571
btc ebx, 94
cmovle di, di
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -64
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
imul rdi, rsi, 57
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], cl
add esi, -5
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], 117
sbb dl, dl
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], dl
adc rax, 1542637830
and rcx, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rcx]
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rdi
and rdx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdx]
test eax, -818909344
or dl, 1 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rdx
cmovb edi, edx
cmovns eax, edx
imul cl
sbb cl, bl
add dl, -114 # instrumentation
cmovl cx, bx
and rcx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rcx]
add al, sil
and rdi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rdi]
sub rdx, 22
adc al, 36
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
