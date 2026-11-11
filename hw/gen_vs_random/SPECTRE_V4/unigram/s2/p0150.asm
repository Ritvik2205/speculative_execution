.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 35
cmovnl rsi, rdi
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
add bl, 97 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], 47
and rax, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rax]
imul cl
dec cl
movsx rdx, dil
and rax, 0b1111111111111 # instrumentation
adc edx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rbx]
sbb sil, sil
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], cx
add cl, cl
cmp rax, 2115020203
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
xor al, dl
cmovnp rbx, rax
and rax, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rax]
cmovs bx, dx
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], 26
cmovnbe cx, bx
mul rbx
mul rbx
not dx
xchg al, al
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr esi, ecx
add bl, -72
adc dil, 54
adc sil, bl
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr edx, edi
adc rax, rdx
and rcx, 0b1111111111111 # instrumentation
movzx ebx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rax]
xchg si, di
test edx, 573099753
test cl, dl
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 7
sbb dl, -99
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 62
or edx, -127
cmp al, cl
or ax, 0b1000000000000000 # instrumentation
bsf ax, ax
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, edx
cmp al, -52
xor rdi, rcx
and rcx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
