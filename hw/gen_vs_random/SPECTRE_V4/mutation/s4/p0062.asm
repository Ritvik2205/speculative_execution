.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -50 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rax]
sbb dl, 75
neg rdx
bt edi, ebx
and rdx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdx]
cmovnbe rax, rdx
and rsi, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rcx]
sub al, -128
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], al
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 0
and rdx, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rdx]
btc ecx, 201
cmp al, al
xchg rcx, rbx
and dl, cl
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], ebx
sbb rdi, rbx
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rax]
movzx rsi, sil
bt ax, 248
add al, 89 # instrumentation
cmovnle si, di
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], al
adc ebx, -5
xor ebx, 40
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], si
btr cx, 252
and rdi, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], al
or eax, 1 # instrumentation
and edx, eax # instrumentation
shr edx, 1 # instrumentation
div eax
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rdx
and rbx, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rbx]
neg cx
btc rsi, 97
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rsi], -84
adc dl, al
xor rsi, -3
mov ax, 31802
and rdx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdx]
movzx edx, al
dec cx
imul eax, edx
btc rdx, rsi
and rcx, -20
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
