.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], 74
cmovnl esi, eax
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rsi
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], bl
add dl, -75 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rbx]
and cl, dl
and rsi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rsi]
mov dl, al
and rdi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdi]
xchg rdi, rax
imul ebx, ebx
cmovb rcx, rsi
sub dx, -12
and rsi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 33
sbb bx, 94
mul rcx
cmovz si, si
sbb eax, 1002977021
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], dx
adc cl, bl
and rcx, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], cx
cmovbe si, si
add cl, 28 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], di
or al, dl
neg rdi
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], 49
mov edx, -950755477
sub al, 69
xor bl, al
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], sil
and rdx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bts word ptr [r14 + rdx], si
sbb esi, ecx
mov rsi, 4368505613814921305
add rax, -874478885
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], -74
or ax, -13633
and rax, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rax]
sub sil, 71
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], 598547570
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rdx
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 7
btc ebx, ecx
imul rax, rsi
sub cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
