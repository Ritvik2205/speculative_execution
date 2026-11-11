.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub sil, -50
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rax
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], cl
and rsi, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rsi]
cmovz bx, bx
mov rdi, rdx
test esi, 56
and rcx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rcx], edx
add sil, 56 # instrumentation
cmovle rax, rsi
add bl, 65 # instrumentation
cmovnp ax, si
sbb sil, 108
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], 6
imul di, dx, 69
not rbx
cmovb edx, edx
xor al, 56
and rbx, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rbx]
adc sil, sil
sub dl, 43
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], ecx
movzx ax, al
bts rcx, 33
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
imul rbx, rdx, 59
and rcx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rcx]
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rbx
add bl, 38 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], 9
sbb bl, 57
xor bl, sil
sbb rsi, -115
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rdi
movsx rdi, bl
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rdi]
add sil, 110
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 34
and al, bl
bts edi, edi
and rdi, -2
mov edx, 17
cmovnb esi, ecx
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rdx
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], edi
cmovnb ax, ax
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 23
add ebx, ecx
and rdx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btr dword ptr [r14 + rdx], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
