.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not di
add dl, sil
neg al
add cl, 106 # instrumentation
cmovnp rax, rcx
and rsi, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rsi]
cmovnbe ebx, eax
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 87
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], 20
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 46
and dl, sil
mov rdi, 75
and rcx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rcx]
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
cmovnp rdi, rbx
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], al
and rsi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rsi], ecx
sub bl, 17
adc rdi, 29
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], 42
imul eax, ecx
add rdx, rcx
cmovl rdx, rax
mov al, dl
cmovns cx, bx
or dx, 9
and rcx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rcx], bx
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], rcx
add bl, -115 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 94
and rbx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rbx]
or dl, 88
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 2
cmovnle rax, rax
test al, al
and rbx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], 73
cmovnle rsi, rsi
sub edi, 84
btc dx, 16
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
add di, -74
and rdi, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rdi], 83
and rdi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdi], dx
cmovs rdx, rcx
add dl, dl
sbb bl, -94
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 70
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
