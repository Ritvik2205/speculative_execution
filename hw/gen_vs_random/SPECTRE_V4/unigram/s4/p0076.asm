.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], si
and rax, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rax]
cmp esi, 123
cmovno edx, eax
xor al, 57
bt rbx, rax
or rbx, rsi
and rsi, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rsi]
movsx eax, si
and rsi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], al
sbb bl, al
adc dl, al
and rcx, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rcx]
test edi, -2098143765
cmp sil, al
xor di, 23
movzx ax, sil
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 2
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], dil
and rcx, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rcx]
adc rsi, 82
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
sub rax, rdx
cmp al, dl
xchg eax, ebx
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, ebx
cmp dl, al
mov al, 119
cmp rax, -1070057082
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], al
and rbx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -3
test ecx, -1293796332
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], di
or eax, 1 # instrumentation
and edx, eax # instrumentation
shr edx, 1 # instrumentation
div eax
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], esi
adc rsi, 82
cmovbe edi, ebx
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], rdi
mov rdx, -3284511739993892328
adc sil, sil
and di, -65
movzx eax, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
