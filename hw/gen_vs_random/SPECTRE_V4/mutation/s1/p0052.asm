.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovs di, di
movzx eax, al
btc ebx, 94
add dl, -114 # instrumentation
cmovl cx, bx
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -119
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rax], bx
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
cmp bl, 13
add esi, -5
sub rdx, 22
sub cl, cl
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], cl
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
and rcx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rcx]
sbb dl, dl
and rax, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rax]
cmovle di, di
and rdx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdx]
adc al, -58
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
test rax, -344032571
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], dl
imul rdi, rsi, 57
and rcx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rax]
sbb cl, bl
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], ax
and rdi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rdi]
cmovb edi, edx
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], dl
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rdi
cmovns eax, edx
test eax, -558243208
add al, sil
and rcx, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rdx
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], 117
and rbx, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
or dl, 1 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rdx
imul cl
adc rax, 1542637830
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -64
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
