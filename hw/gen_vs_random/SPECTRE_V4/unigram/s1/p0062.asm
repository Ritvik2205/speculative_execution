.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rbx, 30
add bl, -75 # instrumentation
adc bl, 39
and rbx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rcx]
test bx, -1599
test bl, 0
bt eax, esi
and rax, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rax]
btr rdi, rax
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], bx
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
and rdi, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rdx]
bts dx, 62
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], bx
xor edi, ebx
bts eax, 209
and rbx, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rbx]
and esi, 55
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 4
xchg dil, bl
not dx
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rax]
cmovs edx, eax
sbb edi, 26
and rcx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rcx]
adc bx, -89
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
imul sil
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
xor ax, 28088
bts edi, 167
add sil, 26
or al, 109
sbb bl, al
mov ax, 43
and rsi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
movsx rsi, byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 32
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
cmp rax, -120490246
cmovb ax, ax
bts rsi, rsi
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rsi
and rbx, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], 94
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
