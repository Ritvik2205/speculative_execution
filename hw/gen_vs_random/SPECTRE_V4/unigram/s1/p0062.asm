.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, al
and rax, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rax]
test rcx, rdi
and rdx, 0b1111111111111 # instrumentation
adc rdx, qword ptr [r14 + rdx]
test dl, dl
cmovnb edi, esi
and rsi, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
xor di, 23
and rsi, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rsi]
movsx ebx, sil
and rax, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rbx]
or si, -84
and rdx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 68
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rbx
xchg bl, bl
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], bl
mov ax, si
and rsi, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rsi]
add bl, 102 # instrumentation
cmovnp esi, edi
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], bl
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], edi
add bl, -2 # instrumentation
cmovs rcx, rdi
and rsi, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rsi]
add bl, 76 # instrumentation
sbb eax, ebx
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
movzx si, dl
cmp rcx, -121
and rdi, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rdi]
xchg di, bx
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], si
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], -59
test si, 72
movzx edx, cx
bts edi, 54
and rdi, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rdi]
cmp sil, bl
cmp cl, -105
mov al, bl
adc rbx, rax
and rbx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rbx]
cmp cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
