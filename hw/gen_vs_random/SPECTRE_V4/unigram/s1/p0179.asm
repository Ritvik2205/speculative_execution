.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc esi, 63
test eax, -251558852
and rax, 0b1111111111111 # instrumentation
movsx eax, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], rbx
xchg rdx, rax
mov sil, 24
test esi, -222751961
add al, -63 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rdx]
adc dil, -17
or dl, 71
and rsi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bts word ptr [r14 + rsi], bx
neg rcx
or dil, dil
sub dl, bl
and rsi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rdx]
cmovle rax, rax
cmp cx, 0
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 50
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
test dx, dx
mov al, al
and si, -74
and rdi, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdi]
mov al, 124
and rdi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdi], rbx
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], sil
dec rdx
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 4
xor cl, al
not dx
and rbx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rbx]
cmovb rax, rsi
neg rsi
and rdi, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], cx
and rsi, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], 48
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rsi
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 3
and rax, 0b1111111111111 # instrumentation
imul word ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rsi]
sbb ax, 7207
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
