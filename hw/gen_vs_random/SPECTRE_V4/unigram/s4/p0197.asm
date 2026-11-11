.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], esi
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], sil
cmovnz ax, ax
cmp ebx, -19
and al, al
add rdx, 82
sbb rcx, rax
sub dl, -16
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], bl
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rax
and rcx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rcx]
cmovbe edx, eax
cmovs ecx, esi
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], 15
and rdx, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], cx
movzx rsi, ax
cmp bl, dl
and rcx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rcx], edi
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], -681182795
and rdi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdi]
cmovbe rax, rcx
sub rax, 1294268026
sbb sil, bl
and rdi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdi]
sbb bl, 121
xor cl, al
cmovnb cx, ax
cmovnle bx, di
and rdx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdx], ax
cmp rax, 40
adc dl, bl
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 5
adc dil, 38
and dl, -53
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], dx
cmovb bx, di
and rsi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btc dword ptr [r14 + rax], eax
cmovnb ax, ax
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], 110
add al, -65 # instrumentation
adc dil, al
test dx, 28394
add dl, dil
cmp ecx, ecx
and rax, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
