.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rdi]
add rcx, 43
neg rdx
btc si, ax
and rbx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rbx]
add dx, dx
add dil, dil
bt bx, 52
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 77
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], 42
cmovle rax, rdx
and rdi, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rdi]
add cl, 106 # instrumentation
cmovnp rax, rcx
xor dl, sil
and rdi, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rdi]
add dx, -90
and rdx, 15
not cx
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rdi
add eax, edx
test al, dil
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], di
cmovnbe rax, rdx
btc ax, bx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
add eax, ebx
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], rax
sub esi, ebx
or dil, 32
cmp sil, 88
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], di
cmovs cx, cx
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
test sil, dil
test dil, al
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
add sil, 26
neg cx
or rsi, rbx
add cl, cl
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], dl
and al, sil
sub bl, cl
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rbx
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 99
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], di
and bl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
