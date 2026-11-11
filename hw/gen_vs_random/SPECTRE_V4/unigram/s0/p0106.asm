.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
or bl, 84
add cl, 119 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], bl
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 32
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
neg dl
test rcx, -2118888343
mov dl, dl
and rsi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rsi]
cmovle dx, dx
and rbx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rbx], edx
and rcx, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
cmovp edi, eax
mov ebx, eax
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], ax
add cl, 106 # instrumentation
cmovnp rax, rsi
and rsi, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], cl
cmovz edx, edx
and rsi, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rsi]
neg cx
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 5
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], 5
and rax, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsr dx, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], 20
and rax, 0b1111111111111 # instrumentation
neg word ptr [r14 + rax]
and bl, sil
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 31
cmovs rax, rsi
and rdi, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rdi]
movzx ebx, dl
bt eax, 84
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], di
and rdx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rdx]
sbb bl, -94
test sil, dl
or dx, 1 # instrumentation
add cl, -75 # instrumentation
sbb dx, si
or ax, si
and rax, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rax]
or si, dx
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], 92
cmovnbe di, bx
and rbx, 0b1111111111111 # instrumentation
cmp di, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 567129166
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
