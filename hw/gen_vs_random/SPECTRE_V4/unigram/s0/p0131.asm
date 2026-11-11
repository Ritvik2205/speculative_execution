.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovns dx, dx
cmovnbe cx, ax
add al, 122 # instrumentation
and rbx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rbx], eax
cmp dil, al
add esi, -5
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 1 # instrumentation
add al, 97 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], 73
and rdi, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 4
xor bl, bl
cmovz esi, edx
add dil, -75 # instrumentation
adc dil, 55
and rdx, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 56
sbb dil, al
movzx ecx, cx
and rsi, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -83
cmovnp eax, eax
and rbx, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], dl
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 62
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], 84
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 51
sub rbx, 10
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, edx
not bx
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 2
imul cl
cmovz ax, ax
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 68
or dil, 14
xor cl, al
test al, dil
movsx esi, cl
mov al, sil
neg sil
add dl, cl
sbb bl, dil
movzx rsi, al
mov rbx, 9101099553822202722
and rax, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rax]
cmovnb esi, edx
adc dl, cl
adc ebx, 117
and rdi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rsi]
sub cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
