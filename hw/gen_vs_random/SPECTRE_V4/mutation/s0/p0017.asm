.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, al
cmovnl esi, eax
cmovz si, si
imul rax, rsi
and rdx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bts word ptr [r14 + rdx], si
btc ebx, ecx
imul ebx, ebx
and rsi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], 598547570
or al, dl
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], -21
cmovb rcx, rsi
mov edx, -950755477
add cl, 28 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], di
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], cx
adc cl, bl
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rsi
neg rdi
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], -39
mov dl, al
cmovbe si, si
and rbx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], dx
or ax, 48
sbb bx, 94
and cl, dl
sub al, -84
sbb eax, 316213929
add dl, -75 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 33
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], bl
and rbx, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 7
sub dx, -12
sub cl, bl
xchg rdi, rax
mul rcx
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], sil
and rsi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rsi]
add rax, 1049076260
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rdx
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], 49
sbb esi, ecx
sub sil, -35
mov rsi, 4368505613814921305
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
