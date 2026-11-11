.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], 49
and rsi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rsi]
cmovbe si, si
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], 74
cmovz si, si
sub dx, -12
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 33
mov edx, -950755477
and rdx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bts word ptr [r14 + rdx], si
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], bl
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], sil
add dl, -75 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rbx]
mov rsi, 4368505613814921305
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 7
mov dl, al
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rdx
and cl, dl
and rbx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], dx
cmovnl esi, eax
add rax, 114
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], -21
or al, dl
mul rcx
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], 598547570
btc ebx, ecx
adc cl, bl
neg rdi
sbb bx, 87
xor bl, al
and rax, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rax]
or ax, -26182
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rsi
add cl, 28 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], di
sub sil, -35
sbb esi, ecx
xchg rdi, rax
imul rax, rsi
and rbx, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rbx]
sub cl, bl
sbb eax, 426996540
cmovb rcx, rsi
imul ebx, ebx
sub al, 86
and rsi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
