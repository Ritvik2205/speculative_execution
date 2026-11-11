.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], edx
add sil, -26 # instrumentation
btr esi, 20
add dl, -26 # instrumentation
btr edx, 30
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rdi]
cmovnbe di, si
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rax
mul ax
and rdx, 0b1111111111111 # instrumentation
adc bx, word ptr [r14 + rdx]
adc sil, bl
bts edx, 88
and rax, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rax]
movzx dx, dl
test rbx, 32
add sil, 110
sub dl, 43
cmovs ebx, esi
or al, 1 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], rax
sub dl, 43
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], esi
movzx rax, si
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
imul rdi
and eax, -37
and rax, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rcx]
bts ecx, 31
and rdx, 0b1111111111111 # instrumentation
cmp esi, dword ptr [r14 + rdx]
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
not rax
and rbx, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rbx]
mov bl, bl
xchg ax, cx
cmovno edi, eax
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], 92
sbb ax, -26881
and rax, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], 10
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], sil
adc dil, 92
adc cl, 4
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 60
sub rdi, 29
cmovnle si, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
