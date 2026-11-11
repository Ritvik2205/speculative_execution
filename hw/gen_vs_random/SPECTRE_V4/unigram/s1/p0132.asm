.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rdx]
cmovs ecx, eax
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
cmovnl rcx, rbx
mov cl, 20
cmovnp dx, dx
xor rax, rcx
add bl, dl
movzx bx, sil
cmp al, dil
and rax, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rax]
add dl, 100 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rbx]
cmovo rbx, rcx
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], ax
and rcx, 0b1111111111111 # instrumentation
cmp esi, dword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 98
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], rdx
add cl, 106 # instrumentation
cmovnp rbx, rdi
imul eax, ecx, 86
add cl, -37 # instrumentation
adc ecx, 95
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 61
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 15
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 23
and rdx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rdx]
bswap rdi
sub al, cl
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], 32
and rcx, 0b1111111111111 # instrumentation
adc edi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 93
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], al
adc sil, dl
add edx, ecx
cmp rcx, 23
and rdi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdi], 63
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], 31
bts ecx, ecx
and rcx, -102
and rcx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rcx]
movzx edx, cl
or si, 50
cmovnl cx, ax
or dx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
sub sil, sil
sbb ax, -26881
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
