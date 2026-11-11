.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], -19860
cmovp rax, rax
test esi, ebx
xchg ebx, ebx
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], ax
and rbx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rbx]
or bl, -86
and rcx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], rdx
or bl, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv bl
and rdi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdi]
and dx, -107
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 6
add dl, 61 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rcx], ecx
and rsi, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rsi]
imul ebx, eax
sbb bx, dx
test dl, -102
cmovnz rsi, rsi
and rax, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rax]
bts dx, di
cmovbe rdi, rbx
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], -117
movsx rsi, di
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
sub al, 59
sub dl, dl
and rdi, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rdi]
movsx di, dl
test ebx, eax
imul rdi, rax
or sil, -47
and dl, -53
and rbx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rbx], rdi
xor esi, esi
cmp rsi, rdx
mov rdi, -3495947874455269481
xchg ebx, edx
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], rbx
add cl, -62
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], 99
test dl, al
and rbx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rdx
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, edx
btc esi, ebx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 32
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
