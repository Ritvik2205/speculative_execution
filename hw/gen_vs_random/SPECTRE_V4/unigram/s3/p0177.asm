.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], al
or dl, sil
cmovnp ax, ax
cmovnbe bx, si
and rsi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rsi]
sbb cl, -104
btc si, 62
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], sil
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], edx
xor sil, dil
add rax, rdx
dec bl
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 70
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
add al, -117 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rcx]
add ebx, eax
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], 25
and rsi, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rsi]
mov rcx, 4219775168754920203
or al, 96
not cx
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -105
add al, 122 # instrumentation
and rax, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rax], esi
and rdi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 124
or al, cl
sub rdi, 44
bt edi, ecx
xor al, al
mov sil, 86
test edx, 573099753
and rbx, 0b1111111111111 # instrumentation
cmp ax, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rcx]
add dl, 12 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rbx]
mul ax
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], si
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 48
and rcx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rcx]
sub bl, bl
sub eax, ecx
and rsi, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
