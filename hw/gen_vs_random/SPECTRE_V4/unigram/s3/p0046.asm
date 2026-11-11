.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, 102
cmovp ecx, ebx
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], rax
and rdi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
add bx, word ptr [r14 + rax]
sbb edi, esi
mov dl, al
add dl, -58 # instrumentation
xchg di, si
xchg eax, ebx
and rdi, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rdi]
cmp bl, bl
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], esi
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 0
and rax, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rax]
cmovnz cx, di
and rbx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rbx], eax
cmovp ecx, ecx
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, eax
btc rcx, 14
and rbx, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rcx]
add dil, 105
btc rcx, 68
adc dil, bl
not rsi
mov rcx, 79
inc al
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rdx
mul cl
mul bl
movsx eax, sil
add rsi, -100
and sil, al
and rbx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], -118
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], 88
sub al, 69
and bx, 99
cmovz bx, di
movsx cx, al
btc rax, 72
xchg al, dl
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], -24
cmovno di, dx
xchg rax, rsi
and rsi, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rsi]
dec ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
