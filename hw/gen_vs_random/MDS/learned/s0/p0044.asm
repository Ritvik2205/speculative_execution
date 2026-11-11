.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 122 # instrumentation
cmovnbe ebx, ecx
and rax, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rax]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rsi
or cl, 10
or al, cl
cmovle esi, ebx
btr rax, rax
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], edi
cmp al, sil
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 3
cmovnl rdx, rdx
jmp .bb_0.1
.bb_0.1:
or si, bx
add dl, -126 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edi
or sil, -8
or al, -48
btc esi, 226
cmovle si, si
and rbx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rbx]
or al, dil
and rbx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rbx]
mov rsi, rbx
and rdi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 43
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edi
and rax, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rax]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf edx, edi
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], ax
and si, 38
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
xor ax, 24729
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
