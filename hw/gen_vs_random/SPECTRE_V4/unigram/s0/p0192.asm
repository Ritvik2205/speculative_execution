.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul rdx, rax
and dil, -61
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rax], 52
movzx esi, dil
and rax, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rax]
and sil, cl
or rbx, -107
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], 3
not al
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
sub dil, -11
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], 120
sub dil, sil
sub al, 86
or cl, -55
or ax, -26182
and rcx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rcx]
cmovnz rdx, rsi
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 90
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax]
test sil, bl
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 81
and rax, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rax], 37
not edi
xchg al, dl
and rax, 0b1111111111111 # instrumentation
movsx ecx, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], rdi
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], 71
cmovbe rsi, rdi
and rdx, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rdx]
test dl, -102
and rdx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdx]
add bl, -30 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rbx]
add al, -17 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rax]
cmovnle cx, dx
cmp ax, -22704
cmovns rcx, rax
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], rax
add sil, bl
and rsi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rax]
bswap esi
not cx
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
sbb si, 21
and cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
