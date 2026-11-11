.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 28 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], di
cmovbe si, si
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 33
sbb esi, ecx
or al, dl
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rsi
imul rax, rsi
mul rcx
add dl, -75 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rbx]
xchg rdi, rax
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], bl
sub al, 0
mov rsi, 4368505613814921305
and rsi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bts word ptr [r14 + rdx], si
sbb bx, 94
and rsi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rsi]
sub cl, bl
and rax, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rax]
imul ebx, ebx
adc cl, bl
cmovz si, si
cmovb rcx, rsi
cmovbe di, ax
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 5
add bl, -18 # instrumentation
cmovs cx, ax
btc edi, edx
sub cl, -32
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], -86
imul eax
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], bx
and rsi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rsi], ecx
and rbx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 1
add al, 122 # instrumentation
cmovz si, ax
cmovbe rdx, rcx
cmovnle edx, ebx
or bx, 0b1000000000000000 # instrumentation
bsr bx, bx
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], edx
and rax, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rax], ecx
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 5
add ax, -18924
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
and rdx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
