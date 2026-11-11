.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], dx
bts cx, 39
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
sbb cl, bl
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rdi
and rdi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btc dword ptr [r14 + rdi], eax
sbb eax, -984782068
and rdx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
movsx rcx, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bt word ptr [r14 + rsi], bx
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
imul rdi
and rsi, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rsi]
movsx ebx, di
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], cl
xor bl, 93
add al, 118
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 83
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, 11 # instrumentation
cmovbe edx, eax
btc ax, bx
movzx rdx, bx
not rax
neg sil
cmovb ax, ax
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], -69
mov rdi, 85
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], 39
adc dl, al
cmovnp esi, esi
and rbx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rbx]
test rax, -331426050
add cl, 7
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
cmovnbe eax, ecx
add bl, 65 # instrumentation
cmovnp si, ax
xchg rdx, rax
add al, 118
btc rsi, rdx
and rdx, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rdx]
mov rbx, rdi
add dl, -39 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdx]
xor bl, cl
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], 27
and rbx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rbx]
cmovnb cx, cx
or edi, 76
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
