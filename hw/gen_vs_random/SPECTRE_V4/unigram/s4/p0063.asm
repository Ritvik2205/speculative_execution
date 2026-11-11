.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 28
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rax
dec bl
bts eax, 209
and rcx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rdx
add bl, -72
and rdx, 84
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], rdx
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 69
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], dl
mov rax, rsi
add dil, dil
test edx, 573099753
and rsi, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], bx
xor bl, sil
cmp ax, -15031
and rax, 0b1111111111111 # instrumentation
movzx ax, byte ptr [r14 + rax]
sub rax, rsi
add dl, -39 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], 15
movzx si, sil
and rsi, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rsi]
bts ecx, edx
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], si
and rbx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], 14
and rdx, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rdx]
cmovs ebx, edx
mov rsi, 55
add dil, -10 # instrumentation
cmovnbe edi, eax
and rbx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
cmovnb cx, cx
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], 92
and rax, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rax]
inc rdx
and sil, al
test edi, -1249897727
xor dx, 6
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], 8
and rsi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rsi], eax
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf edi, dword ptr [r14 + rax]
or eax, esi
or si, bx
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
