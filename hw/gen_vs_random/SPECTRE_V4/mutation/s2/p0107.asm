.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub ax, -13057
cmovp edi, ebx
and rsi, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btr dword ptr [r14 + rsi], ecx
and al, bl
cmp al, cl
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], di
test al, al
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], -99
cmovnz rdi, rcx
mov bl, cl
cmovnz rbx, rdx
btr edi, 54
btr ax, 109
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], si
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 1 # instrumentation
and dx, word ptr [r14 + rbx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rbx]
movzx eax, sil
and rbx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rbx]
cmp eax, 1521417271
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], rbx
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], -42
and rbx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rsi
and esi, 61
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], eax
and rcx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rcx], bx
imul esi, edi
test edi, -1380439873
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], di
add rcx, -61
bts di, 72
xor al, 48
bts rsi, rcx
and rsi, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rbx]
sub edx, 73
imul rdx, rsi
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], 39
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], si
and rax, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rax]
mul edx
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
sbb cl, 45
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
cmovnb eax, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
