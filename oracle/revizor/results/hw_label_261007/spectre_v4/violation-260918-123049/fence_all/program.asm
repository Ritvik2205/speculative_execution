.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
lfence
cmp dword ptr [r14 + rax], -119 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
sub cl, byte ptr [r14 + rcx] 
lfence
and rbx, 0b1111111111000 # instrumentation
lfence
lock not dword ptr [r14 + rbx] 
lfence
or dl, 1 # instrumentation
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
cmp qword ptr [r14 + rdx], rdx 
lfence
test eax, -544019457 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
lfence
bsf si, word ptr [r14 + rbx] 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
sub byte ptr [r14 + rdi], dl 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
cmovnl rdi, qword ptr [r14 + rdx] 
lfence
cmovns eax, edx 
lfence
or sil, 1 # instrumentation
lfence
mov ax, 1 # instrumentation
lfence
div sil 
lfence
add esi, -5 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
mov byte ptr [r14 + rbx], dl 
lfence
movzx eax, al 
lfence
and rax, 0b1111111111000 # instrumentation
lfence
and rdx, 0b111 # instrumentation
lfence
lock btc qword ptr [r14 + rax], rdx 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
adc byte ptr [r14 + rcx], cl 
lfence
cmovle di, di 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
cmovno rdx, qword ptr [r14 + rcx] 
lfence
and rbx, 0b1111111111000 # instrumentation
lfence
lock sub qword ptr [r14 + rbx], 117 
lfence
or cx, 0b1000 # instrumentation
lfence
and cl, 0b11111000 # instrumentation
lfence
and dx, 0b11 # instrumentation
lfence
idiv cx 
lfence
add al, sil 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
xor dword ptr [r14 + rax], -64 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
cmovns ax, word ptr [r14 + rax] 
lfence
adc al, 36 
lfence
sub cl, cl 
lfence
sbb dl, dl 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
sub bl, byte ptr [r14 + rcx] 
lfence
test rax, -344032571 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
and byte ptr [r14 + rsi], dl 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
mov word ptr [r14 + rdx], ax 
lfence
cmovb edi, edx 
lfence
btc ebx, 94 
lfence
sbb cl, bl 
lfence
imul rdi, rsi, 57 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
movsx rdi, byte ptr [r14 + rcx] 
lfence
imul cl 
lfence
add dl, -114 # instrumentation
lfence
cmovl cx, bx 
lfence
or ecx, 1 # instrumentation
lfence
and edx, ecx # instrumentation
lfence
shr edx, 1 # instrumentation
lfence
div ecx 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
add ecx, dword ptr [r14 + rbx] 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
neg dword ptr [r14 + rbx] 
lfence
adc rax, 1542637830 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
cmovp si, word ptr [r14 + rax] 
lfence
cmp bl, 13 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
mov rbx, qword ptr [r14 + rdi] 
lfence
cmovs di, di 
lfence
sub rdx, 22 
lfence
or rdi, 0b1000000000000000000000000000000 # instrumentation
lfence
bsf rdx, rdi 
lfence
and rax, 0b1111111111000 # instrumentation
lfence
and bx, 0b111 # instrumentation
lfence
lock bts word ptr [r14 + rax], bx 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
