.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], bl
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], si
mov rdi, 40
sub cl, cl
and bx, 95
xor ax, 25554
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
mul rbx
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], edx
and rdi, 0b1111111111111 # instrumentation
movsx rbx, byte ptr [r14 + rdi]
cmovns ecx, esi
and rsi, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rsi]
inc di
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rcx
cmovnbe rsi, rax
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 89
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], -114
and rsi, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rsi]
cmovb ebx, edx
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rcx]
cmovnz edx, edi
or bx, dx
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], al
test al, bl
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
sub dl, 43
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], sil
add di, -74
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], 73
and rbx, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rbx]
add bl, -18 # instrumentation
mov rsi, rax
xor dil, 40
add dl, -94 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rax]
cmp dil, dil
sub dil, cl
cmp di, si
and rcx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rcx]
add dl, dl
and rsi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rsi]
adc edi, 62
or si, cx
cmp rcx, 72
cmovz rax, rdx
and rbx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rbx]
or sil, dil
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
