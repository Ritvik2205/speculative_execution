.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, al
sub rdi, 12
add rbx, rsi
adc di, di
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], di
test rdx, 97
dec bx
sub bl, 17
movzx rbx, cl
add sil, 110
and rbx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rcx]
mov rax, rdi
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], esi
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 123
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], 75
and rdi, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdi]
adc sil, al
cmovs ebx, edx
cmp rcx, 38
sub rdx, 22
add sil, 110
inc al
add al, 123 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rax]
imul dx
btc si, 62
not di
cmp cl, 12
sub bl, bl
or bl, 43
sbb dx, 32
sub dil, bl
cmp dl, 83
imul rsi
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
test rcx, -2118888343
dec bx
sbb di, -76
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 1
and rcx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], bl
xor ecx, ebx
sbb dl, sil
imul cx, si
and rsi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rsi], 73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
