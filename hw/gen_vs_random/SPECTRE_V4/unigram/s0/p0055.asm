.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rsi]
add cl, -117 # instrumentation
cmovs rbx, rax
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 73
and cl, al
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdi
or dx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rax]
sub rax, -701741274
mov al, al
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 13
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 64
cmovo esi, edx
add rbx, rcx
inc bx
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], sil
and rax, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rax]
cmovle ax, ax
or edx, edi
mul rbx
add bx, 110
bts ebx, 22
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 567129166
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
mul rbx
and rcx, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rcx]
movzx ax, bl
cmovp edx, ebx
cmp rdi, 31
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 5
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -105
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 98
not cx
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], sil
imul rsi, rbx
and rcx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rcx], 9
sbb dx, 32
adc dl, dil
and rsi, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rsi]
add edx, esi
and rdx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdx]
adc edx, 16
sub rax, rbx
cmovz esi, eax
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
and edx, dword ptr [r14 + rcx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rcx]
movzx edx, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
