.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -71 # instrumentation
adc al, bl
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 5
sbb rsi, rbx
mov dl, -34
and ax, 35
and rdi, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rdi]
dec dl
neg cl
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -57
and rax, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -29
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
xchg dl, dl
or al, 95
and rsi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rsi]
add di, -74
sbb ax, -26881
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 39
and rsi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 121
neg cx
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 10
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], 439393806
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 56
test dl, sil
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 57
and cx, 17
adc al, 69
cmovnz edi, esi
cmovnp ecx, edx
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, esi
bt edx, 37
cmovnb ax, ax
cmovnbe rcx, rax
and rsi, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rsi]
cmovnz eax, edi
xchg edx, eax
add eax, ebx
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], 35
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
cmovb rdx, rax
imul esi, eax
mov rcx, 5862286138240743445
and rcx, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 73
sub dil, dil
and rdx, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
