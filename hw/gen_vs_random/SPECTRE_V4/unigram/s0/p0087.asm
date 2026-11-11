.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rax], rcx
adc al, 69
and rdi, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock bts dword ptr [r14 + rdi], edi
xor dil, 100
add cl, -82 # instrumentation
sbb dx, ax
cmp esi, 54
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], bl
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], ax
sub eax, 2
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], rdx
and rdi, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 35
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
movzx eax, dl
add rbx, rdx
and rbx, 0b1111111111111 # instrumentation
movzx ebx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], 31
add dl, -10 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdi]
cmovz rax, rdx
xor dil, 15
sub dl, 43
test ecx, 28
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rdx
and rdi, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], ecx
xchg ecx, ebx
mov dil, -118
btc ax, 32
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dil
or si, ax
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], ax
imul cl
test rdi, -1876639003
and rdi, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rdi]
and rsi, 80
test edx, 573099753
sbb bl, dl
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 4
or cl, bl
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
add di, -74
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 76
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], dx
sub al, cl
and rsi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rsi]
test sil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
