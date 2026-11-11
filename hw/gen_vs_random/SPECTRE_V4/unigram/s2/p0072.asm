.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
sub dl, 43
not dx
btc si, cx
cmovnbe rdx, rcx
imul cl
and rdi, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
neg word ptr [r14 + rax]
sbb al, 32
imul eax, edx, 41
xchg eax, edi
sbb rcx, 40
and rdx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dil
or di, 69
or al, -71
xchg edx, ebx
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 64
and rbx, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
add ebx, ecx
cmp sil, al
xor dil, 96
and rsi, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], ax
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], rax
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 541896200
and rbx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rbx]
btc rax, 97
sbb sil, dil
and rdi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdi], bx
sbb eax, ebx
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], 6
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], 90
movsx ecx, ax
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], edx
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rcx]
cmovnb ebx, esi
add di, -74
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
cmovz edx, edx
or dl, dl
and dx, 1
sub cl, cl
imul dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
