.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], si
and rcx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], ecx
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -25
not dil
cmp dl, 22
and dil, bl
and rax, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], cl
cmovz ax, ax
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 58
imul dx
and rax, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rax]
cmp di, 56
add cl, 106 # instrumentation
cmovnp rax, rcx
adc dil, sil
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], bl
mov rdx, 97
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 87
mov dl, -34
and rsi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rsi]
cmovl rax, rdx
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], bx
cmovp si, cx
and bl, cl
and rcx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rax]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr edi, eax
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], bl
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
xor eax, -437098167
sbb rdi, rdx
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 53
add al, -117 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rsi
sbb sil, al
dec bx
test al, 66
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], 25
sub al, 98
and rax, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rax]
add cl, 106 # instrumentation
cmovnp rdi, rax
bts rbx, rsi
add ebx, 3
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 92
not dl
bts si, 30
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
