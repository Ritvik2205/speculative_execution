.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rbx]
btr rbx, rax
btc esi, eax
sub dl, -16
cmovnbe di, bx
add cl, -9
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], -1
and rax, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rax]
cmp sil, cl
bts eax, 17
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], cl
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
cmovnb cx, ax
and rdx, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rdx]
and dil, bl
mul dil
btc rax, rcx
cmp ebx, -19
adc esi, 74
sbb rdi, 88
add al, 32 # instrumentation
adc rax, -324435035
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], si
and rcx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rcx]
or ebx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ebx
test bl, 87
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 5
test bl, -91
add cl, -119 # instrumentation
sbb ebx, 74
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], bx
btr ax, si
adc dil, dil
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], rdi
xor sil, cl
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], -67
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], si
add cl, -84 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rax]
cmovnp di, cx
cmovs bx, cx
and rsi, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rcx]
cmovno rsi, rax
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], bl
or ecx, edi
and rdi, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], ax
bt rsi, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
