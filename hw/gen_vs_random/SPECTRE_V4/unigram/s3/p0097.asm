.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add eax, -1796699558
add dl, -114 # instrumentation
cmovl si, bx
and rbx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rbx]
cmovnbe edx, edi
test cl, dil
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rax
xor sil, al
mov rax, -8696242625349627833
bts si, 30
and rax, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rsi]
test al, 66
sub dil, -10
and rdi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 6
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], 30
or ecx, 94
add cl, 69
and di, 37
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
movzx di, cl
xor sil, 56
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], -114
add bl, 63 # instrumentation
and rbx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rbx]
cmp dl, 36
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], 65
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], 439393806
and rbx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rbx], si
and rcx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 94
cmovb dx, dx
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], 63
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 73
btc rdx, rax
xchg rsi, rdi
and rax, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rax]
xor bl, 93
movzx rcx, dx
add eax, -1796699558
and rcx, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rcx]
add di, -74
and rdi, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], -31428
adc cx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
