.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul rdi
add al, 122 # instrumentation
cmovns edx, ebx
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
mov rbx, 9101099553822202722
cmovno edi, edx
neg bl
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], 91
test di, bx
btr rdx, 16
add sil, 26
cmovns ebx, ebx
cmp dl, al
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], 61
and rcx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rcx]
xor edi, edi
cmovle si, si
btc rdi, rax
btr rdx, 33
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 5
cmp al, -23
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
cmovns ax, ax
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
