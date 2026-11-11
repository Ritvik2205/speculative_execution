.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb cl, 19
sbb al, bl
cmp dl, 10
test ebx, 1263899340
cmovnp ax, ax
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, ecx
adc dl, bl
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], 65
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], si
cmovnbe rcx, rax
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
cmovnp eax, edx
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx]
xor cx, 91
and ecx, 62
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], 49
and rdx, 33
cmp ax, bx
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
cmovb ebx, edi
and rdi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdi]
add bl, -115 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 2
movzx esi, dil
and rdi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], dx
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], 92
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], di
add al, 123 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rcx]
add cl, 8 # instrumentation
adc al, sil
bt eax, 84
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 110
cmovnbe rax, rcx
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf edi, ebx
mov bl, cl
and rbx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], di
sub cl, dl
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
xor rcx, rax
movzx dx, dl
sub rax, -701741274
sub rbx, rdi
add edi, ebx
not rdx
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rcx]
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr edi, esi
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
