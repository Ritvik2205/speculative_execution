.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx si, bl
test bl, -91
cmovno ecx, edx
sbb rcx, rax
cmovnb rbx, rax
or al, 27
and rsi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rsi], rax
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 3
cmovz ebx, eax
or di, 0b1000000000000000 # instrumentation
bsf di, di
add dl, -58 # instrumentation
xchg cx, ax
and rdi, 0b1111111111111 # instrumentation
movsx rbx, byte ptr [r14 + rdi]
cmovnb di, bx
or cx, 23
cmovl eax, edi
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], dl
mul al
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], -11
and rsi, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rcx]
cmp esi, 123
cmovbe edx, ebx
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rdx
xor cl, dl
test dil, sil
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
sub cl, -51
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
add rax, -1121139858
and rdx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], al
xor dil, -23
and rdx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rdx], rax
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], esi
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], ecx
and rdx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], ax
cmovl dx, dx
cmovp esi, esi
cmovo si, dx
or al, dl
cmovnl rsi, rax
or dil, 1 # instrumentation
mov ax, 1 # instrumentation
div dil
sub al, al
or si, bx
cmp bl, al
mov rsi, rdi
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
