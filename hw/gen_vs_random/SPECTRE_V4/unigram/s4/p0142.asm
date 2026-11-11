.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx rsi, al
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], 83
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], 18
cmovs eax, edi
and rsi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 97
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -52
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], 71
sbb eax, 4
add bl, -72
add bl, 38 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rbx]
or ax, bx
movzx ecx, cl
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
and rcx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rcx]
sbb cl, al
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 38
cmovle dx, dx
add rsi, 18
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rsi
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], 104
imul rdx, rdi
test bl, 0
and rax, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rax]
add dil, 16
and rax, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rax]
and cl, 58
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 88
cmovnp rdx, rdi
and rdx, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rdx]
mov bx, -31043
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], 56
not sil
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, ebx
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], cl
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 4
add ebx, 3
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 78
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
test dil, bl
and rax, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rax]
and cl, al
or ax, 0b1000000000000000 # instrumentation
bsf ax, ax
and rax, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
