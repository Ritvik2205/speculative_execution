.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub eax, -672265139
xor bl, cl
cmovno esi, edi
and rdi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rdi]
xor rax, -111081832
sbb al, 31
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rsi
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 121
mov cl, dl
and rbx, 0b1111111111111 # instrumentation
adc rcx, qword ptr [r14 + rbx]
adc rcx, rax
movzx esi, cx
or bl, bl
add edi, eax
add rax, rcx
movsx edx, bx
and rcx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rcx]
cmp bl, al
bt esi, edx
add cl, 101 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], ecx
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 123
test sil, 1
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
or ax, -29521
mov dl, al
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rdx
mov edx, -950755477
add rax, 1049076260
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
sbb eax, 1675303701
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
