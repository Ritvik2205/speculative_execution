.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul rdi
add al, 122 # instrumentation
cmovns edx, ebx
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
mov rbx, 9101099553822202722
cmovno edi, edx
neg bl
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
mov rax, -8696242625349627833
add dl, al
or cl, bl
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], 61
adc eax, -1513455903
cmovnl ebx, eax
add cl, -42 # instrumentation
adc dl, sil
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], -102
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], rdx
xchg rcx, rax
xor ax, 25554
xor al, 102
and rdi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rdi], dx
sub cl, cl
adc bl, 89
and rsi, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rbx]
add eax, -1796699558
mov rsi, 54
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
or sil, 35
and rdi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
lea esi, qword ptr [rdx]
and eax, -24
and rcx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rcx], 2
and rdi, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 97
and sil, -49
and rbx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 0
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
add cl, 122 # instrumentation
cmovz rdx, rdi
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], ax
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
movzx rdx, cx
sub dl, bl
xor dl, bl
cmp ax, -15031
lea ebx, qword ptr [rax]
add bx, 110
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
