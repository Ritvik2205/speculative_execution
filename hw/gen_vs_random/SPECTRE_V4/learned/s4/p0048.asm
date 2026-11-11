.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, sil
sbb al, 32
movzx dx, dl
xor rdi, rdx
neg dl
movsx rsi, bl
and rbx, 0b1111111111111 # instrumentation
movsx rax, byte ptr [r14 + rbx]
bts dx, 88
add cl, dl
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], ax
and rsi, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rsi]
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
add rcx, rdx
and rdx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rbx]
cmp cl, 90
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], 78
xor ax, 28088
adc sil, 62
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
adc rdx, 19
inc rsi
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 120
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], ax
adc al, cl
cmp bx, 61
and rbx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rbx]
cmovnb ax, ax
btc rdx, 1
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rsi
bts edi, 167
adc al, dil
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 97
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
mul rbx
and rbx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
sub al, 119
xor dil, sil
cmovle rdi, rdx
imul cl
or al, 109
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dl
bts edx, edx
and rdi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
