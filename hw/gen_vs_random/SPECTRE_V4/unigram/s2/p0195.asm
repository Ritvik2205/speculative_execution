.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], bx
mov esi, esi
cmovnb bx, ax
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], 12
and rbx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rbx]
bt bx, di
and rsi, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rdi]
test sil, -119
xor dl, -123
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], dl
and rbx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rbx]
sbb ebx, -54
and rdx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rdx], eax
and rbx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rbx], eax
and rdi, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
and dil, dil
and rax, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rdi]
and rax, -779592432
or rcx, rbx
cmovno rax, rsi
add bl, al
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], bl
sub rbx, rdx
or ax, 0b1000000000000000 # instrumentation
bsf si, ax
mul dil
bt dx, si
add rdx, rsi
sub al, 54
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 74
cmp edx, ecx
and rax, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rax]
sbb eax, 1002977021
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], di
not ebx
and rbx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rbx]
movzx cx, cl
and rbx, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rbx]
mov al, dl
and rsi, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rsi]
add bl, -57 # instrumentation
cmovno rbx, rcx
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], 6
cmp bl, al
adc dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
