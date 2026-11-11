.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rax]
test eax, -544019457
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rdx
sbb dl, dl
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], 117
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], cl
cmovb edi, edx
add esi, -5
or dl, 1 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rdx
and rdx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdx]
cmp bl, 13
movzx eax, al
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], dl
add al, sil
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rbx]
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
adc al, 69
add dl, -114 # instrumentation
cmovl cx, bx
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
imul rdi, rsi, 57
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], dl
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -64
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rdi
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], ax
adc rax, 1542637830
cmovs di, di
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
sbb cl, bl
imul cl
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
sub rdx, 22
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rbx, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rbx]
cmovle di, di
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -119
and rcx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rcx]
test rax, -344032571
cmovns eax, edx
and rdi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rax], bx
and rcx, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rcx]
sub cl, cl
btc ebx, 94
and rax, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
