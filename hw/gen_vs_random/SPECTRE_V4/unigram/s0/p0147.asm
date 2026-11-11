.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, cl
cmovnp ax, di
or rdi, 43
and rdi, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], cx
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dl
mov cl, bl
and rsi, 0b1111111111111 # instrumentation
and rsi, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rsi]
bts ax, bx
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 0
add dl, dil
and rbx, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rbx]
cmp ax, 28568
btc rcx, 14
cmovnl rcx, rdx
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 70
mov dl, 81
sbb al, 31
movsx bx, cl
sub dil, bl
cmp dil, -29
xor edx, 44
xchg rdi, rsi
or rax, -943474997
cmovs rcx, rdx
mov bx, 27738
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
movsx rbx, ax
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rcx
or sil, sil
or dil, 1 # instrumentation
mov ax, 1 # instrumentation
div dil
sbb rax, rdi
mov al, al
and rsi, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rsi]
sbb ecx, edx
cmovbe ax, ax
cmp bl, al
sbb cl, al
add dl, dl
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 5
mov sil, al
dec ax
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], rdi
and rdx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rdx], -68
sub ebx, 18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
