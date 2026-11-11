.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 74
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
sub ax, di
lea cx, qword ptr [rcx + rax + 67]
and rdi, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rdi]
add rdi, rax
and rcx, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], cx
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], ax
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], edx
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], eax
xor dl, cl
cmp dil, dl
cmovs edi, ecx
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], sil
and rax, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rax]
and al, -127
sub sil, sil
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
imul ax, si, 67
movzx ecx, sil
cmovnbe rbx, rax
cmovnp esi, edx
xchg si, bx
and rdi, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rdi]
xchg rcx, rdx
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btr dword ptr [r14 + rax], edi
and rbx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], di
cmovnbe rbx, rdi
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], -31428
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], 119
sub rdx, 22
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rcx
and cl, dil
sbb eax, -1688332460
xchg dx, di
inc edx
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rax], ecx
and bl, al
and eax, -37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
