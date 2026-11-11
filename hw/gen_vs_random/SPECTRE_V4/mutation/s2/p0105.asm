.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
and rcx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rdi]
and cl, al
cmovnp esi, esi
and rbx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rbx]
movsx di, bl
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], -95
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 4
add dl, -91 # instrumentation
cmovl rax, rax
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 64
xchg esi, eax
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
bts edx, edx
and rdx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rdx]
sbb cl, 45
test bl, 87
and rsi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rsi], edx
and rdi, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], 47
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
test al, 18
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rax
cmovs bx, si
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rcx
test ecx, -1293796332
cmovnp esi, edi
movsx di, dil
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 1 # instrumentation
add cl, 40 # instrumentation
cmovnp rdx, rcx
movsx rdx, ax
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rdx
and rsi, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
mov bl, 58
adc cl, 6
add ax, -18924
adc dl, al
cmovnb rsi, rdi
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 3
add dl, 74 # instrumentation
cmovle edx, ebx
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], al
cmp rdx, -49
cmovno dx, ax
sub al, 63
inc cl
cmovnl cx, dx
and si, -70
cmovle rsi, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
