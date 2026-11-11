.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, cl
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], 66
and al, dl
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 55
and rdi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], 49
cmovz edx, eax
mul cl
xchg al, cl
and rbx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rbx], ebx
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], 84
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], 80
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], 20
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 59
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 6
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], 3
test ax, -5170
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], bl
or cl, bl
add cl, -71 # instrumentation
adc cl, al
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
xchg ebx, eax
xchg rdx, rcx
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], 42
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], dil
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], 98
and rbx, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rbx]
xor sil, al
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
and rsi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], 55
cmovnp ax, bx
or si, bx
cmp sil, 88
add dl, dl
cmovnl rbx, rbx
movzx rsi, dx
and rbx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rbx]
adc dl, 92
sbb eax, -1688332460
movsx rax, dl
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], rcx
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], cl
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], 27
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
