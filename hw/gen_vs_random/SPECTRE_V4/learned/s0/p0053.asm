.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 23
add dl, 12 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], ebx
btr di, 35
and rbx, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rbx]
movzx edi, dx
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 53
bts ebx, 22
add cl, sil
sbb cl, bl
cmp al, 81
and sil, dil
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], cx
or rcx, 1 # instrumentation
and rdx, rcx # instrumentation
shr rdx, 1 # instrumentation
div rcx
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], -12
and rcx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rcx]
cmp al, 70
cmp al, 19
cmovns eax, eax
and rsi, 0b1111111111111 # instrumentation
movzx si, byte ptr [r14 + rsi]
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rcx
cmovl rbx, rcx
sbb bl, bl
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
and rax, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 11
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], ax
cmovnbe rax, rdx
cmp ax, -15031
adc dil, sil
and rcx, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rcx]
sub rsi, 26
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rbx]
cmovnbe rbx, rdx
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], -12
test dil, 97
add sil, 26
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], 81
cmp al, -52
xor esi, ebx
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], bx
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
