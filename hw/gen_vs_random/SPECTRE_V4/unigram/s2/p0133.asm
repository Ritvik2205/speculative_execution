.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rbx]
and rax, 1827025056
and rcx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rcx]
add rsi, rax
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], rbx
and rax, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rax]
neg al
adc edi, -83
and rdx, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rdx]
or bl, -99
xor al, -60
adc di, -78
cmovnbe eax, eax
and rdi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rdi], 17
and cx, si
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, ecx
add cl, 111 # instrumentation
cmovnle dx, cx
xor dl, sil
adc ax, bx
bts rsi, 236
or rbx, 69
and rdi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rcx], 76
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
cmovnz ax, dx
sub ecx, eax
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 6
and rcx, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], ecx
and rax, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
sub al, -84
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], rsi
movzx bx, al
add cl, dl
add dil, 105
or ecx, 1 # instrumentation
add al, 49 # instrumentation
adc cl, sil
xchg dx, bx
mul dil
and rcx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rsi]
sbb cl, cl
sub al, sil
and rbx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rbx]
inc ebx
xchg rsi, rsi
sub ecx, -107
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
