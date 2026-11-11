.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -37 # instrumentation
adc eax, -39
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
add bl, -109 # instrumentation
sbb eax, -2052726562
and rdx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 7
sbb dl, bl
sub eax, 2
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
inc esi
dec dl
cmovs ebx, eax
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], 108
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], 99
bt eax, 84
sub ax, si
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi]
sbb ax, -19255
or bx, dx
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, 11 # instrumentation
cmovbe edi, eax
not rsi
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], 48
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], bl
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -83
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rcx
and bl, dl
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], 32
sub dl, dil
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
btc ax, si
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rdx
movzx ecx, bl
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rbx]
test bl, 24
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
test al, dil
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], al
test al, 80
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], 84
and rdx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rdx]
imul cl
or al, -71
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rax
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
or ebx, edi
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rsi], si
lea esi, qword ptr [rax + rbx]
cmp al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
