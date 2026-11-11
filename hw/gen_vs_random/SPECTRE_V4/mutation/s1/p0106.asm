.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -35 # instrumentation
mov al, bl
cmovno ebx, esi
and rax, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rax]
test rdx, rdx
sub di, si
and rax, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdi]
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
and rbx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rbx]
test al, 114
and rdi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 0
or eax, -612395655
and cx, bx
test edi, -1380439873
xor rdi, -72
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rcx], -79
add eax, 84
cmp dl, 45
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], 109
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
imul edx
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], -1928332684
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], -19860
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], rax
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], rbx
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dil
or cl, bl
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], rdx
and rdx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rdx], eax
add dl, -120 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], cl
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rcx]
add dl, -79 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rbx]
movsx eax, sil
adc al, 41
and rcx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rcx]
movsx si, bl
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rsi
and rdi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdi], rsi
and rsi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rsi], edx
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], edx
and rax, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rax]
cmp ax, 26170
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
