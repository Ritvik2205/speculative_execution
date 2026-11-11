.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -75 # instrumentation
adc bl, 73
mov sil, 76
and rcx, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rcx]
sbb edi, 49
and rax, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], ecx
xchg rdi, rcx
sub dil, -10
add ecx, edx
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], cl
and rsi, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
cmovle rax, rsi
and rdi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rcx], ax
and rax, 0b1111111111111 # instrumentation
movsx rsi, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
cmovle rdi, rax
cmovnbe bx, cx
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rbx]
sbb bl, 57
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], -12
movzx rdx, bx
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
not esi
sub cl, cl
cmp dl, cl
cmovp eax, edi
xor ecx, esi
and rbx, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rbx]
add sil, 110
sbb ecx, 75
cmovnl rcx, rdi
add bl, 65 # instrumentation
cmovnp si, ax
add dl, 48 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], bl
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 88
add al, -117 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rbx]
sbb sil, dl
imul cx, si, 70
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], eax
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 76
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], dl
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
test eax, -558243208
or bl, dl
adc bl, al
sub bl, 17
cmovnp rsi, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
