.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rsi], bx
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], si
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], rbx
add dl, -114 # instrumentation
cmovl si, bx
add dl, dl
cmp al, al
and rdx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rdx]
sbb ax, -19255
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 2
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rcx]
cmp al, 114
cmp ax, -906
imul edx, esi
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], rdi
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], 9
cmovs rax, rdi
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
and rsi, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rsi]
imul rdi, rsi
sub al, 98
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], sil
add cl, 106 # instrumentation
cmovnp rdx, rax
and rdi, 0b1111111111111 # instrumentation
movzx bx, byte ptr [r14 + rdi]
and dx, 1
cmovns rsi, rax
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], di
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], 5
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 35
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], dil
bt ebx, ecx
cmovnp rcx, rbx
and rbx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rbx]
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], 12
and rcx, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rdx], ebx
mul dl
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 84
add dil, dil
and rcx, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], 20
and rcx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
