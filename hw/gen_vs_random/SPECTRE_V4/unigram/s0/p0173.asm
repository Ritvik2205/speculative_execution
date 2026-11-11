.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
and edi, -102
and rax, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rax]
add al, -29
and rdx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rdx], si
imul al
and rax, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rax]
sub ebx, 53
bt rdx, 22
and rax, 0b1111111111111 # instrumentation
movsx eax, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], rdi
adc dl, sil
and rcx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rcx]
sbb al, 57
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], 84
sub bl, -89
sub dl, bl
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 48
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], dil
and rbx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bt word ptr [r14 + rbx], dx
and rbx, 0b1111111111111 # instrumentation
movzx ebx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdi]
cmovbe rax, rdx
cmovo ecx, ebx
cmp rsi, 74
adc cl, sil
cmovns bx, dx
and rbx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], dl
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], eax
cmp dil, 101
add al, -80 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], 26
and rax, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rax]
or cl, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv cl
mov cl, sil
movsx edx, dil
and rsi, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], cx
and rdi, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rdi]
xor dx, 7
adc cl, al
adc al, 41
xchg dl, cl
and rdi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], -87
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
