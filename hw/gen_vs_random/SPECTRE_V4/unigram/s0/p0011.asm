.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc dl, 73
and rdx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rdx]
xchg rax, rdx
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 5
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rax]
sbb bl, sil
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
btc rdi, 167
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
xor bl, cl
and rax, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 15
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
xchg ebx, eax
and rcx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rcx]
bt ebx, 228
add rcx, rax
add sil, sil
add dl, 100 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rax
and rax, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rax]
imul eax
test eax, edi
test rax, -331426050
test bl, 0
adc cl, dl
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
inc rax
movzx rcx, si
cmp sil, 88
and rax, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rax]
cmovnp bx, si
or dx, cx
test di, bx
movzx rdi, al
and rax, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rax], dx
cmp al, -23
add dl, sil
and rax, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rax]
add dl, -75 # instrumentation
adc dl, 71
add al, -102 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rbx]
cmovns ax, dx
adc edi, 46
add cx, 3
xor bl, bl
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
