.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb edi, 50
mov rdi, rax
or ebx, edi
cmovnbe rdi, rdx
cmp bx, 73
movsx ebx, cx
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 97
inc bx
mul edx
imul rdi, rdx
and al, -36
add dl, -10 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rcx]
cmovnbe ax, si
imul eax, edx
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
adc dl, dil
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 60
sub al, 119
mov al, al
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 44
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], eax
movzx rsi, bx
and rdi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 7
and rbx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], 50
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
xchg bx, ax
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, edi
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rsi
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], ax
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], cl
bt eax, 84
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rbx
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rdi
mov bx, -31043
add cl, 52
add dl, 100 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], rdx
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], 27
movzx si, dil
and rdx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdx], 28
sbb rbx, 97
mov bx, -31043
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
