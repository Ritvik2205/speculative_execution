.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 28 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], di
cmovbe si, si
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 33
sbb esi, ecx
or al, dl
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rsi
imul rax, rsi
mul rcx
add dl, -75 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rbx]
xchg rdi, rax
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], bl
sub al, 127
mov rsi, 4368505613814921305
and rsi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bts word ptr [r14 + rdx], si
sbb bx, 94
and rsi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rsi]
sub cl, bl
and rax, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rax]
imul ebx, ebx
adc cl, bl
cmovz si, si
cmovb rcx, rsi
btc ebx, ecx
sub dx, -12
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], 598547570
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], 49
xor bl, al
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 5
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], -74
and cl, dl
sub sil, -35
neg rdi
or ax, 48
mov dl, al
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rdx
mov edx, -950755477
add rax, -874478885
cmovnl esi, eax
and rbx, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], dx
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], cx
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], 74
and rcx, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rcx]
sbb eax, 426996540
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
