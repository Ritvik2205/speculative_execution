.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rcx]
not rcx
test sil, 38
add ebx, 3
cmovnle edx, esi
add dil, 110 # instrumentation
movsx cx, dil
add sil, 72 # instrumentation
cmovle si, dx
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], 82
imul bx
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], di
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], si
adc dl, 90
cmp cl, cl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 7
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], al
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], si
and rax, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], 10
cmovnz bx, cx
and rcx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rcx], ax
cmovns dx, ax
mov dil, dil
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rdi
and rdi, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rdi]
add dl, dl
sub cl, al
movzx esi, sil
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 34
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], 95
sbb cl, sil
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
add al, 118
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
sbb bl, dil
xor rbx, 95
add dl, -10 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
xor rdi, 69
and rsi, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rsi]
imul ebx, ecx
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], rsi
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rsi]
bt cx, 111
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
