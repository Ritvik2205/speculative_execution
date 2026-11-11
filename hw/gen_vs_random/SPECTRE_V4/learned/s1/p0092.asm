.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -92
and rcx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
or dl, 1 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rdx
test eax, 1561062795
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
and rdx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdx]
cmovns eax, edx
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
add esi, -5
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], dl
movzx eax, al
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rdx
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], cl
cmovle di, di
and rcx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], 117
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
add al, sil
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -64
and rax, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rax]
adc al, 36
sub cl, cl
sbb dl, dl
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
test rax, -344032571
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], dl
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], ax
cmovb edi, edx
btc ebx, 94
sbb cl, bl
imul rdi, rsi, 57
and rcx, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rcx]
imul cl
add dl, -114 # instrumentation
cmovl cx, bx
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rbx, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rbx]
movzx esi, dil
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
and sil, dl
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
mov rsi, 37
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], ebx
and rdi, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 97
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
movzx rdx, cx
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
