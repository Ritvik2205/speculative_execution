.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovl edx, eax
and rdi, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rdi]
add sil, -18
xor dil, -23
imul di, cx, 12
and rcx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], bx
and rax, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rax], 43
cmp bx, dx
and rcx, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], rdi
add al, -64 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdi]
cmovnbe rdi, rax
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
and rax, 86
and rcx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rcx]
sbb ebx, -54
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rsi], rbx
cmovnb edx, edx
bts cx, 158
cmovno esi, eax
btr dx, 209
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], edx
bswap eax
and rbx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rbx], ecx
and al, 75
neg bx
or si, 0b1000000000000000 # instrumentation
bsf di, si
cmovnl bx, di
and ax, 16313
add al, 80 # instrumentation
mov bl, dl
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rcx]
cmp al, dl
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], cl
cmovno edx, eax
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], 98
or si, 85
and rax, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rax]
inc bx
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
cmp rax, 40
or ax, 28571
and rcx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
