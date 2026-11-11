.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, bl
xchg dil, dl
and rax, 0b1111111111111 # instrumentation
movzx ax, byte ptr [r14 + rax]
mov sil, al
adc cl, 111
and rbx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rbx]
xor al, dil
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
and rdi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdi]
mov eax, ecx
or ax, ax
xor cl, -15
and rdx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rax
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], dil
adc cl, al
sub bl, al
cmovbe rdi, rcx
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], -538885619
add al, 122 # instrumentation
cmovz ax, cx
or ebx, -82
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdi]
imul rax, rbx, 84
add al, -8 # instrumentation
xchg bl, al
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], sil
mov ax, 31802
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], si
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], ax
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 38
xchg rax, rdi
mov dil, dl
test rbx, 1219566903
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
or si, 1 # instrumentation
and dx, si # instrumentation
shr dx, 1 # instrumentation
div si
and rsi, 0b1111111111111 # instrumentation
add esi, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rsi, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rcx], 2
and rax, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rax]
or si, 1 # instrumentation
and dx, si # instrumentation
shr dx, 1 # instrumentation
div si
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], -67
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
