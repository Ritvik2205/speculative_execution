.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rax]
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rdi
movzx eax, al
cmovs di, di
and rbx, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rdx
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -92
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], dl
test eax, -544019457
cmovns eax, edx
sbb dl, dl
imul cl
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], dl
test rax, -331426050
add esi, -5
and rcx, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rcx]
btc ebx, 94
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -64
cmovle di, di
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
and rcx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rcx]
imul rdi, rsi, 57
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], ax
cmp bl, 13
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], cl
sbb cl, bl
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], 117
sub cl, cl
and rdi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rdi]
sub rdx, 22
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
cmovb edi, edx
adc rax, 1542637830
and rcx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rax], bx
add dl, -114 # instrumentation
cmovl cx, bx
add al, sil
adc al, 69
and rdx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdx]
or dl, 1 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rdx
and rax, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
