.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 28
and rdx, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
and rsi, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rsi]
xor bl, dil
test dil, -26
btc rax, 72
movsx edi, sil
xor edi, 127
and rax, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rax]
add bl, 95 # instrumentation
mov sil, 100
or rdx, 1
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], 98
and rax, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], rcx
and rax, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rax], si
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], bl
and rbx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rbx]
test bl, bl
imul ebx, ecx, 86
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 4
sub sil, al
inc eax
and rax, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], ax
sbb rax, 59
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], ax
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 31
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], al
and rdi, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rdi]
xor rcx, -111
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 11
xor di, 40
and rbx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rbx], di
cmovo di, bx
test bx, 24072
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], 59
cmovz eax, esi
and rdx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rdx], -68
btc rbx, rcx
xor al, al
and rbx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rbx]
and si, cx
and rcx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rcx], 50
sub sil, dl
and rcx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 60
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
