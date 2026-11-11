.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnz rax, rax
and rax, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rsi], ecx
cmovo rdi, rdx
and rdx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdx]
mov sil, dil
and rbx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rsi]
test sil, cl
and rdx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rbx]
cmovz rbx, rax
test dx, ax
and rax, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rcx]
cmovnl ax, di
and rax, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], 92
and rdx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rdx]
cmp bl, -16
and rbx, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rbx]
add cl, -9
test sil, -119
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], 101
sub rbx, 101
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], rax
btc rdx, 178
or rax, rdx
bts edx, 116
and rcx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rcx]
movsx di, bl
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], si
and sil, bl
btr rsi, rax
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], dl
cmovnz rbx, rbx
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], al
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], sil
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], bl
or edx, 0
and esi, 61
add dl, 122 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rax]
test al, cl
imul ax
cmovnz rax, rdi
or dil, dil
movsx ebx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
