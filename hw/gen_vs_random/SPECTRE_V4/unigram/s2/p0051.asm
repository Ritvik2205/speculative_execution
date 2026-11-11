.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], rdx
mov edi, eax
add rcx, -61
and rcx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdi]
xor dil, -23
adc al, -70
and rax, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rcx]
add al, -127
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 4
add al, -55
sub dl, -16
and rax, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
cmovno eax, ebx
and rdx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], -18
and bx, 62
and rcx, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rdx
mov dl, al
test rsi, 24
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
and rdi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 2
mov al, sil
and rbx, 0b1111111111111 # instrumentation
cmp bx, word ptr [r14 + rbx]
mul edx
adc edi, -83
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rax]
inc esi
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], 38
and rdx, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rdx]
add bl, -13 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rax]
adc rbx, rsi
add al, -3
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], sil
bt ebx, 92
add bl, -59
neg al
sbb sil, -124
and rbx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
