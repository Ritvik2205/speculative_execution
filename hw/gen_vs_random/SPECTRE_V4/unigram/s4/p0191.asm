.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rax
and si, -70
cmp dil, dil
xchg ax, cx
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rax], 8
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rsi
and rax, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rax]
imul dl
and rdi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdi]
mov sil, cl
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], bl
and rbx, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
cmp sil, al
and rax, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], ebx
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 2
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rbx]
adc dl, cl
and rdx, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rdx]
not rcx
and rdx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdx], eax
neg rax
mul dl
and rdi, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdi]
movzx esi, sil
adc rbx, 60
and rdx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdx], rsi
add al, 27 # instrumentation
mov al, bl
cmovnb ebx, ecx
or cl, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv cl
and rcx, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rcx], 62
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], rbx
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 38
or al, 27
xor dil, bl
and rax, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rax]
not rdx
add edi, 83
cmovnb cx, dx
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], cx
or rax, rax
cmovb rbx, rcx
and al, bl
and rbx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rbx], eax
and rcx, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
