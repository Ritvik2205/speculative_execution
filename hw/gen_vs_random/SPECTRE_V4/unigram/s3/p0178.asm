.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovb bx, dx
imul dl
imul dl
or rbx, 69
and rsi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rsi], 97
add al, -39 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], 53
imul edx, edx
cmovnle rax, rsi
and rdx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdx]
add rbx, 35
and rdx, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdx], rdx
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rsi
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dil
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], rcx
add eax, -1398129660
and rdx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdx]
and rbx, 27
and rcx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rcx], ebx
bts di, 72
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], ecx
add cl, -33 # instrumentation
not al
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], dl
btr rbx, rcx
test dl, 24
cmp rax, -2096157586
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], di
cmovnp dx, bx
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], edi
bt ax, 84
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rbx
sub dl, al
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 5
and rbx, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rbx]
cmovbe rdi, rdx
and rdi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rdi], rax
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], si
and ax, 16313
and rax, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rax]
cmp rbx, -91
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
sub cl, bl
and rdi, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rdi]
cmovb bx, cx
movsx rsi, dil
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
