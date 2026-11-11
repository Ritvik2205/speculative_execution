.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
cmp dl, 6
test ebx, 1263899340
movzx rsi, cl
sub ebx, eax
and rdi, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rdi]
test rdx, 44
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], cl
and rcx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rcx]
dec rdx
test al, 66
mul rbx
and rax, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rax]
dec cl
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], ecx
movzx rdx, bx
sub al, 98
add sil, -10 # instrumentation
cmovnbe esi, edi
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], cl
and rax, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rax]
movzx di, dl
and rbx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dil
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], di
test dx, 100
not dx
and rsi, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], ecx
and rdx, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], si
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, -10 # instrumentation
mov dx, 48
and rax, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rax]
add bl, 63 # instrumentation
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 80
and ecx, 11
add cl, -82 # instrumentation
sbb bx, ax
cmovl rax, rdi
bts ebx, 22
sbb al, -62
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
dec di
test ecx, ebx
add cl, cl
cmovnl rbx, rbx
sbb rdi, 37
add sil, 110
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 83
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
