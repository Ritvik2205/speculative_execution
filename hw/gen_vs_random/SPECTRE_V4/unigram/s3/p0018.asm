.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], 25738
bts bx, 42
cmovo ax, ax
and rsi, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rsi]
add al, -109 # instrumentation
cmovns si, dx
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], esi
and bl, dil
cmovnz rbx, rsi
and ax, 13045
and rbx, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rbx]
or bx, -33
or cl, sil
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
or al, cl
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], si
cmp eax, 512128713
cmovnp esi, esi
and edx, 29
and rcx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rcx]
sbb ax, dx
cmp dl, 83
and rsi, 0b1111111111111 # instrumentation
movsx ecx, byte ptr [r14 + rsi]
cmovp rdx, rbx
add esi, 37
and rax, 0b1111111111111 # instrumentation
imul word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 5
and di, bx
xor rbx, -99
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], rcx
and rdx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdx]
add dl, 109
sbb si, 61
sbb cl, sil
or dil, 5
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], -31
btr cx, bx
cmovbe dx, dx
adc rax, rdx
and rsi, 0
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], rsi
neg edx
or ecx, 1 # instrumentation
add al, 49 # instrumentation
adc cl, al
sbb sil, -11
add dl, -82
sub rbx, 101
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
