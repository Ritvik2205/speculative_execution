.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or di, ax
cmp rax, -120490246
and rdi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdi]
cmp bx, si
and rax, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rax]
cmovnp bx, bx
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], al
neg al
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], ax
imul cl
mul dl
and rdi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rbx]
add al, -117 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rsi]
setnz sil
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], bx
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 5
xor al, bl
and rcx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rcx]
and dl, 84 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdx], 3
adc eax, -79
and rdi, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdx]
sub dil, -10
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], bl
cmovnbe rax, rbx
and rax, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
movzx ecx, al
cmp al, cl
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btr dword ptr [r14 + rax], edi
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
and eax, -24
add ebx, ecx
or rsi, 80
and rsi, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rbx], -41
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 3
and rsi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
bts rdi, rdx
and rdi, -2
imul eax
btc dx, 16
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rdx]
bt ebx, 228
add bx, 110
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
