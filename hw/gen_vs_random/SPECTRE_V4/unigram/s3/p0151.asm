.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts edi, 79
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 71
sub rdi, 105
sbb si, 11
cmovno rdi, rbx
and rax, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rax]
test rcx, rdi
adc dl, dl
movsx rbx, ax
cmovno ax, cx
adc bx, dx
cmp eax, esi
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], si
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], rax
and rcx, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rcx]
and dil, cl
xor eax, 167244411
movsx rsi, di
test rbx, 1219566903
and rcx, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rcx]
test al, -24
and rsi, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rsi]
add dl, 1 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 1
xchg di, di
or rcx, 98
and rax, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rax]
add al, 105 # instrumentation
cmovl ecx, ebx
test eax, 1947430392
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 3
and rdx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rdx]
sub al, 0
add dl, -4 # instrumentation
cmovp cx, si
xor bl, -126
add dil, al
and rax, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rax], 74
and rbx, 0b1111111111111 # instrumentation
not word ptr [r14 + rbx]
btr rdi, 145
sub eax, -90064733
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], di
add dl, dl
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
xor ax, -6064
cmovl edi, esi
add ecx, 99
bts rdi, rcx
xor cl, 88
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
