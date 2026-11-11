.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -40 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
cmovz ebx, edx
mov rbx, rdi
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], 86
cmovnbe dx, di
xor al, -31
mov bl, cl
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], -115
test edx, -38580719
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rdx
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 2
bswap edx
cmp eax, -2073187604
and rax, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rax]
add dl, cl
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdx
sub bl, cl
and rsi, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], 76
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], rdx
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], cx
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rdx]
and dil, cl
or rdi, rdx
test dil, -83
sub rax, 2016976449
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
xor ebx, ecx
cmp rsi, 22
and rdx, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
cmp dl, dl
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], eax
xchg di, bx
imul al
xor ax, -22861
add ecx, 99
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdx]
sub rdx, rsi
and rbx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
or dl, -26
and rax, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
