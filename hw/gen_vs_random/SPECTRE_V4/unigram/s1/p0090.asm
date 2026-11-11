.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc esi, 92
and rbx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], sil
sub sil, sil
and rbx, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
bswap edi
btr dx, 209
cmp esi, -84
and rax, 0b1111111111111 # instrumentation
cmp esi, dword ptr [r14 + rax]
dec cl
cmovz rcx, rax
adc bl, 97
dec bx
and rsi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rsi], -15
xor di, dx
not ax
and rdi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdi], rsi
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], 98
sub al, 54
adc rax, 519150753
adc dl, dl
and rax, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rax]
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
or cl, 12
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], edx
and rsi, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rsi]
cmp rbx, -3
mov cx, -22668
and rdx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rdx]
adc al, 116
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 1
and rdx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rdx]
test rsi, rbx
and rcx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], 29
bt edi, eax
sub ebx, edx
sbb bl, dl
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], 23
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], bl
or rax, rdi
or dil, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv dil
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 97
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
