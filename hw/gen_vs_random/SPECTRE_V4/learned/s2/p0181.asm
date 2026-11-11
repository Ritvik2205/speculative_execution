.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, bl
cmovb edi, ebx
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx]
adc eax, -79
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dl
cmovs dx, di
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -52
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], cl
mov al, dl
sub al, 50
xor cx, bx
sbb bl, -94
cmovns bx, di
sub al, dl
cmovo rdx, rcx
xchg rdx, rsi
cmovbe dx, dx
and rbx, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rbx]
xor bx, di
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
or al, 109
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], edi
or rsi, rbx
btc cx, 240
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 4
and rdx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], cx
or sil, 16
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], 17
and rax, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rax]
and eax, -37
and rcx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rcx]
cmovnle rsi, rsi
sbb cl, 19
and rdi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bt word ptr [r14 + rdi], bx
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], sil
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], 56
add dl, bl
imul cl
not eax
movzx bx, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
