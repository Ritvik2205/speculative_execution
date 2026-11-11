.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rbx]
bt eax, 84
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], cx
and al, cl
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], si
mov dl, al
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], 71
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], ax
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add al, -10 # instrumentation
mov ax, 84
xchg al, cl
imul edx, eax, 92
cmp al, bl
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], si
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rdi]
imul edx, esi
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], ebx
and rdi, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rdi]
xor bl, cl
cmovnb edi, edx
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], 20
sub al, bl
and rsi, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rax
test bl, 0
xchg edx, edi
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
imul ax, bx
xchg rbx, rcx
add dil, dil
sbb cl, al
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], esi
and rdx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rdx]
sub cx, bx
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], dx
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 2
add dl, -10 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], sil
movzx rcx, dil
cmovnl rbx, rbx
and rax, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rax]
and rbx, 69
and rdi, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rdi], 29
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
