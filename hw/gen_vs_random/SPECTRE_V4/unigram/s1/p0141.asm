.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], rax
sub dil, -10
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 79
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
xor al, 29
xor bl, 93
bt edx, 45
adc dl, al
xor dil, 71
and rcx, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rsi]
xchg ecx, ebx
bt eax, edx
cmovns dx, di
cmovnl rax, rsi
and rbx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], dil
bt edx, ecx
bts eax, edx
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
add rax, rdx
btc rdi, 167
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
and rsi, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rsi]
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], 14
and rdx, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rdx]
inc rcx
and rsi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 21
adc di, -110
and rbx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rbx]
test ebx, -595096626
inc ecx
add eax, -1796699558
sub ecx, edi
cmovnp rcx, rdx
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 7
cmp al, cl
add dl, 12 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], dil
test edx, 573099753
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rcx]
add dx, dx
cmovle esi, ecx
and bx, 95
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
