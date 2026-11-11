.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 40
or ax, 0b1000000000000000 # instrumentation
bsf si, ax
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
and rax, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rax]
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
add cl, 106 # instrumentation
cmovnp rdi, rbx
add cl, sil
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], di
adc eax, -1513455903
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], rsi
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], cx
and rcx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rcx]
or sil, dl
cmovp ax, cx
and rdx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rax], rdi
not edi
and bl, 44 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rcx]
movzx ebx, bl
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 49
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], sil
test dil, cl
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], al
sub dil, -10
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rdi], rax
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
sub dl, sil
cmovnbe rbx, rsi
add rdi, 105
and rbx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdx], 80
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], 104
and rcx, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rcx]
xchg eax, ebx
add dl, al
and rax, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rsi]
mov cl, cl
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 73
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 47
cmovb di, di
bts rsi, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
