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
and eax, -1056713114
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
add ax, 10655
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
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], al
cmovo ax, dx
test dil, al
mov edi, 412386591
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
bswap rdx
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
movzx ecx, sil
and rsi, rdx
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rdi]
add dl, -85 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rbx]
and cl, -128
cmp dx, -1
sbb cl, dil
cmp al, -44
and rbx, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rbx]
xor bx, 106
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], bx
bts ax, 159
and rdi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdi], rax
sub cx, -114
or al, al
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 69
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
