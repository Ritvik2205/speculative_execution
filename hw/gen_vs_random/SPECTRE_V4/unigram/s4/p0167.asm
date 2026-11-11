.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], eax
and rbx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rbx]
adc al, dl
imul dx, bx
cmovs si, di
or edx, 0
or bx, -33
and rbx, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rbx]
sbb ecx, edi
cmovle ax, ax
and ecx, 71
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], ecx
and rsi, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rsi]
cmovz eax, ebx
and rdi, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rdi]
or ebx, -82
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
adc sil, 88
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], rsi
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], 110
add al, sil
and rax, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rax], eax
and rcx, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rcx]
cmp edx, 4
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], bl
and rsi, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rbx]
xor cl, -101
and rcx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rcx]
add eax, 84
cmp bx, 113
and rsi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rsi], edi
adc al, sil
and edi, -102
and rcx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 1 # instrumentation
and edx, dword ptr [r14 + rax] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rax]
xchg rsi, rcx
sub eax, -865916088
and rdx, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rdx]
xchg bx, ax
adc sil, -31
sub rax, 120
and cl, 32
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rax]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr edx, edi
or rdi, -41
and rcx, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rcx]
imul dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
