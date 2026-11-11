.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], ebx
xchg ax, si
cmp edi, edi
and sil, -84
and rdi, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rdi]
cmp dil, -29
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], rdx
bts edx, edx
or cl, 12
and rcx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rcx], ecx
and rax, 0b1111111111111 # instrumentation
neg word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], rax
xchg rcx, rax
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], 19
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], cx
and rsi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btc word ptr [r14 + rsi], ax
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rdx]
and cl, -118
imul ecx
imul edx, ebx
cmovl cx, bx
bts rdx, rcx
and rdi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdi]
mov bl, bl
not cl
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], sil
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], ax
cmovle rax, rsi
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
mov edx, -950755477
xor bl, -126
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rax]
cmp cl, 100
and rax, 1072797615
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], 25
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], al
sbb bl, sil
test dl, 114
and rdi, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rdi]
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
add bl, cl
cmovbe ax, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
