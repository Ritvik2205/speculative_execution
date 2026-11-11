.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dx, 100
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
cmp cl, bl
and rdi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdi], dx
and rsi, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rsi]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rsi
or si, 88
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 32
sub cl, 116
cmovb dx, dx
imul dl
not bx
and rax, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rax]
or dx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rbx]
cmovnb ax, ax
and rax, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rax]
sub cl, dl
mov sil, al
cmovnb rbx, rdi
and rbx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rbx]
cmovnb eax, ebx
xchg bx, cx
test dl, 19
btc rax, 42
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 87
cmovnbe rdx, rbx
and rax, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rax]
xor al, cl
and rdi, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rdi]
movzx rax, cl
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rax]
test al, al
adc al, dil
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
cmovnp cx, cx
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add al, -10 # instrumentation
mov ax, 82
and rcx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rcx]
xor dl, 71
dec sil
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], 88
sbb dil, dil
and rdi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdi]
cmovnz edi, ecx
and rcx, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rbx]
cmp rax, -120490246
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
