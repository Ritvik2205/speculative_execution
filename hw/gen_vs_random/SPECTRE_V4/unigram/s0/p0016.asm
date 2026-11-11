.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnle rdx, rbx
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], cx
test edi, -2098143765
btc rdx, rdx
and rsi, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rax], rax
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rax], edx
sbb dil, bl
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
imul rax, rbx
test dil, -5
and rcx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rbx
test al, 115
and dl, al
xor dx, 7
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
cmovnb bx, cx
and rdx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdx]
and ax, -603
or eax, 1470564945
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], rax
add al, cl
neg edx
or di, 29
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], -17
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], cx
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], 90
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], ebx
add ecx, 99
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], -17
mov dl, al
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rbx]
or cl, cl
add dl, -85 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rcx]
btc rsi, rbx
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], 18
and rcx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rcx], 63
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], 47
movzx dx, al
and rcx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rcx], -87
bt rdx, 47
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
add si, ax
cmovl edx, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
