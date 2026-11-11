.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rax]
add eax, esi
add edi, 11
sbb eax, 4
cmp al, -52
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 6
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], 120
dec rcx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
add dl, 100 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
xor dil, al
add rdi, rsi
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], 19
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], 61
cmovp ebx, ebx
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], rbx
and rcx, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rcx]
add bl, bl
or cl, dil
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
cmovnle rcx, rsi
and rcx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rcx]
and dl, sil
or bl, 8
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -57
and rdi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdi]
bt cx, 111
cmp dx, si
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rdi]
movzx rax, cl
and rdx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdx], si
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], 104
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], si
cmovnbe edi, esi
or al, 109
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
bts rbx, 73
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rax]
sbb ax, -26881
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], si
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 1
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], ecx
add al, 118
movzx rcx, dx
or dx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
lea ax, qword ptr [rdx]
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 51
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
