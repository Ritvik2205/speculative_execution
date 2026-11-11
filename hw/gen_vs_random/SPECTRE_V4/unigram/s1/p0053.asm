.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 87 # instrumentation
cmovz edi, edx
neg edi
bswap rdx
and rdi, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rdi]
or bl, -80
sbb bl, bl
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 7
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rdi
xchg rdi, rdx
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], al
cmovo cx, ax
and rbx, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], bx
or bx, si
and rax, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rax]
xor dl, -123
cmovb ax, bx
cmovo ax, dx
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], eax
adc rbx, rdi
and rbx, 0b1111111111111 # instrumentation
movsx edx, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], rcx
or dil, 5
cmovo ebx, edx
not ebx
or rsi, -5
xor al, sil
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], dil
or eax, -1341747033
xor edi, 127
cmovnbe rcx, rbx
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], sil
inc bl
and rdx, 0b1111111111111 # instrumentation
cmp di, word ptr [r14 + rdx]
sub ecx, -107
or esi, 32
cmovbe cx, cx
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rax
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
movzx edi, ax
and al, al
cmp eax, 64
or rax, 980130592
and rcx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rcx]
sub dl, cl
sub rdx, 97
add al, 121 # instrumentation
movsx eax, bx
add bl, -24 # instrumentation
cmovnbe ax, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
