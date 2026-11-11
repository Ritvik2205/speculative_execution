.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnp rdx, rax
cmovnz bx, cx
movzx dx, al
and bl, 26
or si, 15
and al, -36
cmovnp cx, si
sub edx, esi
and rax, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rax
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], dx
cmp dl, al
add bl, -21 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rdx]
test dx, 53
cmovnl rdx, rax
cmovnbe dx, ax
xchg dx, ax
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 57
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 0
cmovo eax, edx
movzx esi, dl
cmovnbe edi, ebx
and rsi, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rsi]
adc eax, -79
and rdi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rsi
and rdi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdi]
xor dl, sil
test rdi, -1876639003
or ecx, 31
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], dil
xchg rax, rsi
btc rdx, 96
or di, 0b1000000000000000 # instrumentation
bsr si, di
and rdi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rdi], si
and rcx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btr dword ptr [r14 + rcx], eax
imul dl
and rdi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rax]
cmovnbe rsi, rdx
sbb bl, -94
add bl, 38 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rcx]
imul dx
and rdi, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rcx]
test edx, 573099753
or al, 95
bt ecx, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
