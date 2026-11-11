.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg ax
adc rax, rcx
mov rax, rdx
or dl, 1 # instrumentation
neg ecx
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], si
and eax, -2040347881
and rdi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], edx
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
add bl, cl
cmovnb edi, edx
and rsi, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdi]
add ax, -7857
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rcx]
bswap eax
movsx bx, cl
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], ax
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
adc rsi, 82
and rcx, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rdx], ecx
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
and rcx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdx], -41
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], rax
add dl, al
not rcx
btr dx, 245
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
cmovs bx, di
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
btr di, cx
not dx
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], bl
add rax, 1049076260
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf edi, dword ptr [r14 + rcx]
add al, -10 # instrumentation
and rax, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rax]
sbb bl, 121
cmovnb bx, bx
and ax, bx
and rbx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
bt ecx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
