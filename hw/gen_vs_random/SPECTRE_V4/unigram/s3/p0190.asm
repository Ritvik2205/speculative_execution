.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, dl
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], bl
and rdx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdx]
adc dl, 75
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], edx
sbb rdx, 73
and sil, bl
cmp rsi, 80
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 100
and rsi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 120
bt esi, ecx
add dl, -39 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], dx
not ax
bt ebx, 228
sbb sil, dl
cmovp ax, si
and rdx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rdx]
imul sil
adc dl, al
xor al, bl
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], eax
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btr dword ptr [r14 + rax], edi
and rdx, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], 70
or sil, cl
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], 97
bt ecx, 96
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -119
cmovnbe rax, rax
imul rbx
and dl, al
add sil, sil
cmovz ebx, eax
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 78
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
cmovnbe bx, di
sbb ax, -26881
add cl, -42 # instrumentation
adc dl, dil
cmovl rsi, rdi
sub edi, 4
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], 73
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
