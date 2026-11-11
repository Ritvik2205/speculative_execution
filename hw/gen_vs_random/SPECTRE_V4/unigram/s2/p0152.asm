.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 95
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rdi
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
sbb al, al
and rax, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rdi]
add sil, 26
btc ax, 74
and rsi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rsi], eax
cmp si, 86
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 2
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], si
and rdx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdx], rax
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], ebx
movsx ebx, dx
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr edx, eax
add cl, -102 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rax]
add dl, -102 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rbx]
add dl, 118 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
adc cl, dil
and rcx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rcx]
bts edx, edi
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 89
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rdx]
bts rbx, rcx
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], 31
add al, -117 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rbx]
cmp al, 70
test sil, 19
sbb bl, -94
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], 119
cmovs ebx, edx
and rdi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdi]
sub dil, -10
test rbx, 9
cmovnbe rsi, rdi
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], 4
inc rcx
or di, dx
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
add bl, bl
cmovnp dx, si
and rcx, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
