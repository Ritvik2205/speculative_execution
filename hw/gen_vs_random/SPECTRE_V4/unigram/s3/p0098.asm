.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test edx, 573099753
xor al, -2
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rcx]
add bl, bl
mov sil, sil
xor rax, 52
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 1
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], 46
cmovnbe rcx, rbx
xor dl, 33
test sil, 99
cmovb rax, rsi
sbb bl, 57
movsx rsi, al
and rcx, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rbx]
add dl, -114 # instrumentation
cmovl si, ax
imul rdx, rax, 45
imul bx
add bl, -26 # instrumentation
btr ebx, 6
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
and edx, dword ptr [r14 + rcx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rcx]
and sil, -49
sbb sil, 108
and rcx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 29
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 84
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], sil
test esi, 46
cmovno edi, eax
and rcx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rcx]
movzx di, al
imul dl
mov cl, sil
sbb bl, -94
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], 100
cmp sil, bl
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rsi, qword ptr [r14 + rcx]
sub sil, -36
sub dx, cx
xor sil, 56
test eax, -818909344
bt esi, 227
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], ebx
movsx ecx, bl
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
bswap rdx
and rdi, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
