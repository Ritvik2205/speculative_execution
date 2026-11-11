.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 4
and rax, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rax]
add dl, 45 # instrumentation
cmovbe rdx, rax
and sil, dil
imul ebx, eax, -112
and rax, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], 12
and rax, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rbx]
sub sil, sil
add bl, -50 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rax]
add cl, 53 # instrumentation
cmovnbe edx, ebx
and rdx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], esi
bt edi, 78
and rsi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdx]
mov bl, cl
or eax, 1001462340
cmovbe rcx, rdi
and rdx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], bx
cmovnle rsi, rax
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], dx
sbb bl, 121
movzx rdi, cx
and rdi, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rdi], 43
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
test rcx, 26
movzx rdx, bx
xor rsi, rcx
and al, sil
and bl, sil
sub cx, -114
add dl, 122 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rcx]
btr rax, rsi
cmp rcx, -121
or dil, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv dil
and rbx, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btr dword ptr [r14 + rbx], edi
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
and rdx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btr qword ptr [r14 + rdx], rcx
movsx edx, sil
and rdi, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rdi]
adc eax, -1127383570
movzx dx, dil
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], dl
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
xchg rcx, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
