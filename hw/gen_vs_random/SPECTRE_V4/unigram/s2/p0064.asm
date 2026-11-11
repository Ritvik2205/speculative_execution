.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 7
adc sil, dl
and rdx, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rdx]
movzx eax, bl
or cx, 29
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 55
cmovnle rcx, rcx
cmovb edi, eax
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rsi]
cmovnz ebx, ecx
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], 48
sbb al, -62
xor si, 72
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 3
dec sil
or cx, 26
adc edx, 44
sbb sil, 108
and si, 68
cmovo di, dx
test ebx, -595096626
cmovnbe rbx, rcx
and rbx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 2
and rdx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rdx], bx
and rcx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rcx]
sub sil, -50
cmp rax, -120490246
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
and rdx, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rdx]
add dil, 16
and rcx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rcx]
add sil, 26
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dl
and rcx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rcx], dx
and rcx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -95
cmovns ecx, eax
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], eax
add bx, 110
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 68
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], al
bt edx, 77
or dil, dl
add rax, 43
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rax]
xchg di, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
