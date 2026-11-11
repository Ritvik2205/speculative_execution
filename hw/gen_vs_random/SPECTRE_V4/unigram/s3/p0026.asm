.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rdx]
and bl, sil
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], ax
and rcx, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rsi, qword ptr [r14 + rdx]
and al, -1
mul eax
and rax, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rax], di
and rax, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rax]
and cx, di
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dil
xchg cx, di
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], rbx
imul si, di
add cx, 29
and rcx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rcx]
mov cl, 1
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], cx
and rcx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rcx]
cmovnbe edx, ecx
and rbx, 0b1111111111111 # instrumentation
add ax, word ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], rdi
and rdi, 0b1111111111111 # instrumentation
movsx edi, byte ptr [r14 + rdi]
mov dl, -124
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], -1014276215
add bl, 102 # instrumentation
cmovnp edx, edi
and rdx, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], rdx
and rdx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdx], 37
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], -126
cmovnz ax, di
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], 99
btr eax, 7
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], ax
movzx ax, sil
and dil, al
sub cl, -73
and al, -12
bts ebx, esi
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], rbx
cmovo di, di
and bl, sil
or edx, 1 # instrumentation
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
cmovnz bx, di
and rdi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
