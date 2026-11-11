.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], dx
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
and ecx, 16
neg cl
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], eax
xor dil, 13
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], sil
sub al, 119
test eax, 1880179600
sbb ax, -26881
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 16
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], dil
xchg edx, eax
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax]
adc bx, -89
add cl, 106 # instrumentation
cmovnp rcx, rdx
or ax, 0b1000000000000000 # instrumentation
bsr dx, ax
test edx, 573099753
and rcx, 0b1111111111111 # instrumentation
movzx ebx, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], 3
adc dl, dil
and rsi, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rsi]
bswap esi
or dx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rax]
test rax, -344032571
dec dx
add dl, -99 # instrumentation
not edi
add bl, dl
and rdi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdi], 86
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 84
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rsi, qword ptr [r14 + rdx]
cmovnbe ecx, eax
and rbx, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rbx]
sub rsi, 26
mov rdi, 79
and rdi, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], cx
add ax, 28666
and rdx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rdx]
not bl
and rcx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], bl
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
sbb cx, 84
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 19
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], cl
add rbx, 14
and rdi, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
