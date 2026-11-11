.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg rax, rcx
sub eax, 490935921
and rbx, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rbx]
or bl, -35
and rsi, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rsi]
xor rsi, rdi
add rsi, rax
sub cx, -114
sbb cl, 12
and rcx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rcx]
cmovz ebx, edx
and rdi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdi]
btr cx, 252
and rcx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rcx], 17
cmp sil, al
btc rdi, rbx
and rdi, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rdi]
sub rbx, rbx
and rdx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rdi]
test dil, bl
mov dl, 81
not edi
and rcx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rdi
cmovnz rcx, rax
sub di, 9
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 67
and rcx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], di
cmp rsi, rdi
mul cl
xor rsi, -102
and rdi, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and ebx, dword ptr [r14 + rcx]
add bl, -38
and al, 85
and rsi, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rsi]
cmp rax, 1097504565
and rdi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rbx]
mov dl, -124
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], bl
and rsi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rsi], rcx
movzx rax, bx
movsx cx, dil
and rbx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bts word ptr [r14 + rbx], cx
add cl, -58 # instrumentation
cmovnz esi, edi
bts edx, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
