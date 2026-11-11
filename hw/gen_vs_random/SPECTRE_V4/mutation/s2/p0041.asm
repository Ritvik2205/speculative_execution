.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg rdi, rax
imul ebx, ebx
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rsi
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 33
and rsi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rsi]
neg rdi
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], 598547570
and rdi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], cx
mov edx, -950755477
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], sil
sbb eax, -920840872
and cl, dl
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], bl
add cl, 28 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], di
add dl, -75 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rbx]
btc ebx, ecx
cmovbe si, si
mul rcx
and rdx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bts word ptr [r14 + rdx], si
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], 49
and rbx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], dx
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 7
sbb esi, ecx
and rax, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
sub al, 54
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], 74
cmovnl esi, eax
mov dl, al
sub sil, 71
and rbx, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rbx]
cmovz si, si
or al, dl
mov rsi, 4368505613814921305
xor bl, al
imul rax, rsi
cmovb rcx, rsi
and rsi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rsi]
add rax, 1049076260
sub dx, -12
or ax, 48
and rcx, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rcx]
adc cl, bl
sub cl, bl
sbb bx, 94
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rdx
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], -21
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
