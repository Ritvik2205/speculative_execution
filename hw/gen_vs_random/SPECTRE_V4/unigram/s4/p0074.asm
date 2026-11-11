.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnb cx, si
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 0
test sil, -119
add dl, -79 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rbx]
movzx ebx, sil
movzx bx, dil
xor sil, al
and rdi, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdi]
test al, 27
cmp dil, cl
add dil, dil
cmovo bx, ax
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], sil
add bl, -52 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
add cl, -33 # instrumentation
not dil
and rsi, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 4
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
cmp rdi, rax
and rdx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rdx]
cmovbe edi, ecx
movzx rdx, bl
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
and rax, 0b1111111111111 # instrumentation
add cx, word ptr [r14 + rax]
sub bl, dil
neg ax
and rsi, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], edx
mov dil, bl
and rdx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdx]
adc rax, rbx
and rcx, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
cmovz eax, edx
and rdi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdi], dx
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 8
and rax, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], al
and rdi, 0b1111111111111 # instrumentation
test rdi, rsi
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], -1014276215
xor dl, al
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], 54
and rdx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdx], rcx
and rdx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rdx]
cmovle rdx, rsi
btc esi, eax
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
