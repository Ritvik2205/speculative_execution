.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rdx
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
add esi, -5
imul rdi, rsi, 57
movzx eax, al
or dl, 1 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rdx
test rax, -344032571
cmp bl, 13
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rax], bx
and rcx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rcx]
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
cmovns eax, edx
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
adc rax, 1542637830
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rdi
cmovb edi, edx
sub cl, cl
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rdi]
imul cl
cmovle di, di
sub rdx, 22
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], dl
sbb dl, dl
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
cmovs di, di
and rcx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], cl
add al, sil
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -64
adc al, 69
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -92
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], dl
and rax, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rax]
btc ebx, 94
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
add dl, -114 # instrumentation
cmovl cx, bx
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], ax
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], 117
test eax, -818909344
sbb cl, bl
and rbx, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
