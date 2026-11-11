.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc rax, 1542637830
and rcx, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rcx]
movzx eax, al
cmp bl, 13
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], dl
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rdi
cmovns eax, edx
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -119
imul cl
cmovs di, di
and rdx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rcx]
btc ebx, 94
sbb dl, dl
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
test eax, 1561062795
and rax, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rax]
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
or dl, 1 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rdx
and rbx, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], 117
imul rdi, rsi, 57
test rax, -344032571
add al, sil
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rdx
sbb cl, bl
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], dl
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
sub cl, cl
cmovb edi, edx
sub rdx, 22
adc al, -58
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
cmovle di, di
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], cl
add dl, -114 # instrumentation
cmovl cx, bx
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], ax
and rcx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rcx]
add esi, -5
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -64
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rax], bx
and rax, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
