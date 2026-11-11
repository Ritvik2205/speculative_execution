.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test edi, -1380439873
adc edx, ecx
bswap rcx
sub rcx, 126
cmovo edi, ebx
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rcx
add bl, -52 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rcx], 43
and al, -118
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr esi, ebx
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rcx], edx
cmovnle esi, edi
dec rdi
cmovp rcx, rax
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 3
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 19
and rbx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rbx]
bt rax, rax
or si, dx
and rsi, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], cl
or rax, 185991441
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], cl
dec cl
cmp dl, cl
movzx bx, sil
mov al, al
or rcx, rax
or al, dil
sbb di, di
or sil, bl
test cl, al
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], 77
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 2
btc rdi, 66
or bl, dil
xor dil, 117
sub bl, cl
cmp bl, 12
and rdi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdi]
and ax, cx
mov al, dil
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], 74
dec si
sbb si, si
sub ax, 8246
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 95
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
