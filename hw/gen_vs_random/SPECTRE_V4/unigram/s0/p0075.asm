.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
bts eax, 209
bswap edx
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], 96
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rdi, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdi]
cmovb edx, edx
and rbx, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rbx]
cmovp esi, edx
test rbx, 99
and rcx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rcx]
btc rcx, 84
and rax, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rax]
imul bl
and rbx, 0b1111111111111 # instrumentation
movsx rbx, byte ptr [r14 + rbx]
or al, 109
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], sil
dec bx
not cl
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], cx
test edx, 573099753
neg al
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], bx
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
mov rcx, 4219775168754920203
cmp dl, al
inc edi
xchg rcx, rdi
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
cmovnp edi, esi
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf edx, edi
cmovnle di, di
and rdx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdi], cx
test rdx, 52
mul rbx
add edi, ebx
cmovnl dx, bx
and rax, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rcx]
bt edi, edx
add bl, -21 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rsi], 40
and rcx, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
