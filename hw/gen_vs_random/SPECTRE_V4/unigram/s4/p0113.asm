.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub si, -92
and rax, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rax]
mov ecx, edx
cmovbe dx, dx
and rbx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rbx], si
or cx, 0b1000000000000000 # instrumentation
bsf dx, cx
and rcx, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], ax
and rcx, -20
adc al, -70
and rdx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rdi]
xor sil, 89
and rax, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rax], ax
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
sbb bl, -75
and al, al
and rbx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rbx]
imul rcx
sub ebx, 35
or edx, -118
cmovp rax, rax
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rcx
sub si, dx
add al, -32
cmp si, 109
add dl, 1 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rdx]
test cl, 78
or rdx, 1
cmovno edx, ebx
cmovnle ebx, edx
dec al
imul al
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], bl
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 0
or al, sil
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
add al, 42 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rbx]
xor bl, -126
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], dl
cmp cl, al
and edx, ecx
or cl, 1 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
or al, dl
cmovno rax, rcx
and rax, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
