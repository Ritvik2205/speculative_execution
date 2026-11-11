.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], bx
btc ecx, 201
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], rax
cmovnl bx, dx
and rax, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], sil
add rdx, 31
add rsi, rdx
and rcx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 1
cmovl rdx, rsi
and rax, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rax]
mul dl
mov dl, cl
sbb cl, dl
mov al, sil
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
and rsi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rbx]
add sil, -96 # instrumentation
and rsi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rsi]
add dil, sil
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], al
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], si
or eax, 185586366
mov rdx, rax
and rdi, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rdi]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rsi
and rdi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdi], -7
btr di, 245
add dl, -40 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rcx]
mov ecx, -405458789
sub dil, dil
add rsi, -100
neg al
and rsi, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rsi]
dec sil
add bl, 102 # instrumentation
cmovnp edx, eax
bts ebx, 189
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], cx
and dil, -61
test cl, -52
movzx rbx, di
xor al, dil
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], -18
and rdx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btc dword ptr [r14 + rdx], eax
and al, bl
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
