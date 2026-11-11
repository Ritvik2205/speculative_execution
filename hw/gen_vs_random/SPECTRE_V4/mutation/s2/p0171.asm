.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub ax, 23
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
cmp eax, 89
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
and rdi, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rdi]
xor al, -6
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], al
and rax, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], -59
adc bl, sil
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
cmovbe edx, ecx
movsx eax, sil
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, edi
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 118
and rdx, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], 10
or bx, -33
adc bl, -58
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 43
and rbx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rbx]
xor rbx, -99
mov cl, 1
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], -31
or cx, 23
add dil, 105
imul dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
