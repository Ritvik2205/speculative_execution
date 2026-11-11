.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
add dx, 72
test edi, -1380439873
test rdx, rax
and rdx, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rdx]
add rdx, rdx
and rax, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rax]
xchg sil, al
cmp al, sil
and rbx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rbx]
adc eax, 1019803307
test al, 52
cmovl edi, eax
xchg edx, esi
and rax, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rax]
movsx bx, sil
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], di
imul ebx, eax
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], esi
xchg cl, dl
cmp dl, sil
sbb bx, 94
cmovo ebx, eax
xor ax, 20236
and rcx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], cl
cmp si, 109
adc rbx, 60
cmp bl, al
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], 113
test dl, -102
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], rdx
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], 41
cmovbe eax, eax
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], rdi
and rsi, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btr dword ptr [r14 + rsi], edi
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -52
add dl, 56 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 98
and rcx, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rax]
cmovl eax, ecx
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], rax
test edx, 1479885278
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], ax
and rbx, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rbx]
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, ebx
xor al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
