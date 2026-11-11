.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub cl, cl
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
movzx eax, al
and rdi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
or dl, 1 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rdx
imul cl
btc ebx, 94
sbb dl, dl
cmovns eax, edx
cmovs di, di
cmovle di, di
imul rdi, rsi, 57
test eax, -558243208
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
sub rdx, 22
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -64
add dl, -114 # instrumentation
cmovl cx, bx
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rdx
and rcx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rcx]
adc rax, 1542637830
and rdx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], ax
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
cmp bl, 13
and rax, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rdi
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rax], bx
add al, sil
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -92
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], dl
sbb cl, bl
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], 117
cmovb edi, edx
and rcx, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rcx]
add esi, -5
adc al, -58
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], cl
test rax, -331426050
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], dl
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
