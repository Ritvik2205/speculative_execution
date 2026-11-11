.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdi], ebx
imul ax, cx, 4
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], rdx
sub bx, 24
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr edx, esi
sbb cl, 127
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], al
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], dx
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], edi
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], ax
and rbx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rbx], 14
sbb rax, 1518549445
neg edx
and rbx, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rbx]
mov rax, -4627568876460436527
and rbx, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rbx]
mov bl, 29
movzx rbx, si
cmovs rcx, rdx
and cl, -118
sub si, -92
add sil, 87 # instrumentation
cmovz eax, esi
and rsi, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], sil
and dl, al
sbb dl, -106
and rbx, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rbx]
inc bx
cmp ax, 26170
and bl, cl
cmovnbe rax, rbx
and rbx, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rbx]
adc cl, sil
and rbx, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rbx]
sbb dil, cl
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], cl
mov cx, ax
sub bx, bx
and rcx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btc word ptr [r14 + rcx], ax
add edi, 80
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr esi, eax
cmovle rax, rax
cmovs rbx, rax
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], bl
and rax, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rdx
cmovl cx, cx
and rdx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
