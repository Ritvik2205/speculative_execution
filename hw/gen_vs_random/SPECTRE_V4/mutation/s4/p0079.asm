.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovz si, si
sbb eax, 1482884079
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], sil
mul rcx
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], 49
adc cl, bl
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rdx
cmovb rcx, rsi
mov dl, al
btc ebx, ecx
sbb esi, ecx
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rsi
or al, dl
add rax, -874478885
and rsi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rsi]
add dl, -75 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rbx]
sub sil, -35
and cl, dl
sub dx, -12
xchg rdi, rax
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 7
add cl, 28 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], di
and rbx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], dx
or ax, 11396
mov rsi, 4368505613814921305
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], 74
neg rdi
and rdi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdi]
cmovbe si, si
xor bl, al
and rdx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bts word ptr [r14 + rdx], si
and rbx, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rbx]
sub cl, bl
mov edx, -950755477
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], bl
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], 598547570
imul rax, rsi
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], 40
sub al, 0
and rcx, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rax]
cmovnl esi, eax
imul ebx, ebx
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
sbb bx, 94
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], cx
and rsi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 33
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
