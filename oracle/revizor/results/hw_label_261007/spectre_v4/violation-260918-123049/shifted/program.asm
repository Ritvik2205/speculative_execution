.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -119 
and rcx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rcx] 
and rbx, 0b1111111111000 # instrumentation
lfence
lock not dword ptr [r14 + rbx] 
or dl, 1 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rdx 
test eax, -544019457 
and rbx, 0b1111111111111 # instrumentation
lfence
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rbx] 
and rdi, 0b1111111111111 # instrumentation
lfence
sub byte ptr [r14 + rdi], dl 
and rdx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdx] 
cmovns eax, edx 
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil 
add esi, -5 
and rbx, 0b1111111111111 # instrumentation
lfence
mov byte ptr [r14 + rbx], dl 
movzx eax, al 
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lfence
lock btc qword ptr [r14 + rax], rdx 
and rcx, 0b1111111111111 # instrumentation
lfence
adc byte ptr [r14 + rcx], cl 
cmovle di, di 
and rcx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rcx] 
and rbx, 0b1111111111000 # instrumentation
lfence
lock sub qword ptr [r14 + rbx], 117 
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx 
add al, sil 
and rax, 0b1111111111111 # instrumentation
lfence
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
lfence
and byte ptr [r14 + rsi], dl 
and rdx, 0b1111111111111 # instrumentation
lfence
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
and rbx, 0b1111111111111 # instrumentation
lfence
neg dword ptr [r14 + rbx] 
adc rax, 1542637830 
and rax, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rax] 
cmp bl, 13 
and rdi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rdi] 
cmovs di, di 
sub rdx, 22 
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rdi 
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lfence
lock bts word ptr [r14 + rax], bx 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
