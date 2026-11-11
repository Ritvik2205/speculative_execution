.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rax
or eax, 1 # instrumentation
and edx, eax # instrumentation
shr edx, 1 # instrumentation
div eax
inc al
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], di
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], si
btr cx, cx
xchg dl, dl
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 27
add dil, 75
and rax, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rcx]
add dl, 91 # instrumentation
adc dl, sil
or edx, -83
add al, -35 # instrumentation
mov sil, al
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], ecx
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 0
add cl, -20 # instrumentation
adc dil, dl
neg rsi
test sil, -119
and rdx, 84
and rsi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rsi]
cmovnz esi, eax
and rdi, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bts word ptr [r14 + rsi], cx
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
and rsi, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdi]
btc edi, ecx
cmovnle rax, rsi
adc bl, cl
and rsi, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rsi], eax
cmp edx, ecx
and rdi, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rdi]
adc rdx, -90
and rax, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rax]
btr dx, si
bts edx, 116
and rdx, 0b1111111111111 # instrumentation
movsx esi, byte ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rax], rsi
bswap edi
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rcx]
xchg ebx, eax
or edx, -118
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
