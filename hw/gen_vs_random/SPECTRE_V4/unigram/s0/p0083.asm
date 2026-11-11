.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dil, 97
cmovns dx, bx
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btr qword ptr [r14 + rsi], rdi
and rax, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rcx
and rdi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rdi]
mov rdi, rax
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
add edi, 11
add dil, dil
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], al
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
mul rbx
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], 8
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 2
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], bl
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
adc dil, bl
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 40
and rdx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdx]
cmovz esi, ebx
and rcx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rbx], ax
add cl, 93
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], bx
or bx, dx
test eax, -818909344
not ax
and rax, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rax]
add bl, dl
and rdi, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rdi]
sub ecx, esi
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 85
and rax, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rax]
sub dil, dil
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], dl
and rbx, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 75
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], al
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], 64
and rdi, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], bl
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 2
add cx, 50
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
