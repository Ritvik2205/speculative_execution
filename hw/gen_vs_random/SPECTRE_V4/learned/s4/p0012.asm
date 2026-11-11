.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, sil
sbb al, -62
movzx dx, dl
xor rdi, rdx
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], edi
movsx rsi, bl
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
and rbx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rbx]
cmovnb ecx, eax
xor al, 59
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rdx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], -107
sbb ax, -26881
test edx, 573099753
imul esi, edx, 69
adc bl, al
and rdi, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rdi]
inc rsi
add bl, bl
cmovo esi, edx
inc rsi
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
xchg eax, edx
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 120
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
btc rbx, rdx
and bl, 26
adc cl, cl
adc dl, dil
cmovnp rsi, rsi
add cl, -103 # instrumentation
cmovnl rdi, rcx
lea esi, qword ptr [rbx + rdi + 84]
cmovnbe edi, edx
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dl
movzx edx, sil
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 5
mul rbx
and rcx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -71
and rax, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btc word ptr [r14 + rax], bx
cmovb di, di
or dx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
and rdi, -2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
