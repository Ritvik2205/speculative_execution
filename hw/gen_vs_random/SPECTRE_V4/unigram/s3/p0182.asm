.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], 74
cmp dil, -124
cmovnbe rdx, rax
and rdx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rdx], 63
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 81
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], 76
add cx, 17
or edx, -127
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], 86
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
imul cl
bts edx, 72
btc rax, 53
cmovs ebx, eax
or ax, dx
or dil, 1 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], rdi
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], 45
add eax, ebx
and rdx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 4
and rsi, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btc dword ptr [r14 + rdx], edi
sbb dl, -99
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rsi
xor ax, 25554
or si, di
cmovns rax, rcx
or dil, 73
add dx, -90
and rsi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rsi], edi
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -52
and rbx, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rbx]
cmovs rbx, rax
and rax, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rax]
cmovns dx, ax
test cl, bl
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
test al, bl
add sil, sil
sub ebx, 59
and rdi, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rdi]
and di, 17
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
