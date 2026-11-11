.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 7
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
sub ebx, 39
sub ax, -13057
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], cx
imul edx, edi, 10
and rdx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bts word ptr [r14 + rdx], di
cmovp rax, rbx
test dil, bl
cmovno eax, esi
and rcx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rcx]
and dil, al
movsx dx, sil
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 82
cmovz bx, ax
or rcx, rdi
imul dl
and rsi, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rsi]
movzx esi, al
test ecx, 860867711
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
test cl, 78
and rsi, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rsi]
adc edx, -125
and rsi, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], eax
bts ecx, ecx
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], 6
inc edx
neg edi
and rsi, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rsi]
test dil, bl
cmovnbe rax, rsi
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], 127
and rcx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btr dword ptr [r14 + rcx], ebx
and rax, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rax]
add bl, 77 # instrumentation
cmovno bx, ax
mul al
btc ax, 10
sub sil, dil
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], dil
mul sil
and dil, dil
movzx ebx, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
