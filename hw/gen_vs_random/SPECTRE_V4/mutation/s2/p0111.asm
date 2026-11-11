.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -57 # instrumentation
cmovno rbx, rax
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], -10
xor si, dx
cmovnz di, ax
test al, bl
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
or rdx, rax
and rcx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
imul word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 57
xor sil, dil
cmovz ebx, ebx
cmovnz rcx, rax
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rdx]
add dl, -25 # instrumentation
cmovs rbx, rcx
and rcx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rcx]
cmovnbe si, di
adc bl, al
mov rax, -4627568876460436527
and rdi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rdi]
dec cx
and rdx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdx], -86
and rax, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rax]
test cx, 7280
cmovl rbx, rdi
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], -123
cmovs rdx, rsi
or ebx, -78
and rbx, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], si
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], bx
add eax, 953442933
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 0
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], rdi
and rax, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rax]
and dil, -61
test dl, al
or bl, -80
cmovz ecx, edx
sbb ax, 18812
cmovnp ax, si
and rdx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
mov bl, dl
cmp bl, al
adc sil, 88
and rdi, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
