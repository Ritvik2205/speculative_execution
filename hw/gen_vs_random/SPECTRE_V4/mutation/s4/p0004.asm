.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], ax
imul rdi, rsi, 57
sbb dl, dl
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
movzx eax, al
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -92
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rax], bx
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rdi
cmovns eax, edx
and rcx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rax]
add al, sil
btc ebx, 94
test rax, -331426050
adc al, -58
cmp bl, 13
sub cl, cl
adc rax, 1542637830
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], dl
and rax, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rax]
cmovle di, di
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], dl
and rdx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], 117
sbb cl, bl
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
or dl, 1 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rdx
and rbx, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -64
sub rdx, 22
and rdi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rdi]
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
cmovs di, di
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
cmovb edi, edx
add dl, -114 # instrumentation
cmovl cx, bx
imul cl
test eax, 1561062795
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rdx
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], cl
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
and rcx, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rcx]
add esi, -5
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
