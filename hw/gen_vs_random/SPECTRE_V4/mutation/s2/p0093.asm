.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb bx, 87
and rcx, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], cx
mov rsi, 4368505613814921305
xchg rdi, rax
or ax, -29521
neg rdi
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], 598547570
mov edx, -950755477
sub cl, bl
sbb eax, 316213929
add cl, 28 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], di
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], bl
and rbx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], dx
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 33
sub dx, -12
cmovbe si, si
and rdi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdi]
xor bl, al
cmovnl esi, eax
imul ebx, ebx
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 7
add rax, -1121139858
add dl, -75 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], 74
or al, dl
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
mov dl, al
imul rax, rsi
and rsi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], 49
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], -21
and rsi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rsi]
and cl, dl
sub al, -128
mul rcx
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], sil
adc cl, bl
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rsi
and rax, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rbx]
sub sil, -35
cmovb rcx, rsi
and rdx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bts word ptr [r14 + rdx], si
sbb esi, ecx
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rdx
cmovz si, si
btc ebx, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
